#define BOOST_TEST_DYN_LINK
#include <boost/test/unit_test.hpp>
#include <cstdlib>
#include <future>
#include <chrono>
#include <string>
#include "beginners_method.hpp"
#include "cube.hpp"
#include "cube_generator.hpp"

using namespace std;

const string ROUNDS = "ROUNDS";
const string ROUNDS_DEFAULT = "250";

string getEnvOrDefault(const string& varName, const string& defaultValue)
{
    const char* value = getenv(varName.c_str());
    return value ? value : defaultValue;
}

struct CubeSolution {
    CubeSolution(string i, bool s, string is) : 
        initialCubeRepresentation(i), wasSolved(s), initialScramble(is) {};
    string initialCubeRepresentation;
    string initialScramble;
    bool wasSolved;
};

void tryToSolveRandom(promise<CubeSolution> cubePromise) {
    string initialScramble;
    Cube cube = CubeGenerator::fromRandomScramble(initialScramble);
    string cubeString = cube.asShortString();
    CubeSolution cubeSolution = CubeSolution(cubeString, false, initialScramble);
    
    try {
        BeginnersMethod().solve(cubeString);
        cubeSolution.wasSolved = true;
    } catch (StalemateException se) {
        cubeSolution.wasSolved = false;
    }
    
    cubePromise.set_value_at_thread_exit(cubeSolution);

}

BOOST_AUTO_TEST_CASE(test_solve_many_random_in_parallel) {
    const int NUM_ROUNDS = stoi(getEnvOrDefault(ROUNDS, ROUNDS_DEFAULT));
    const int NUM_THREADS = 4;
    const int ALL_TASKS = NUM_ROUNDS * NUM_THREADS;
    stringstream ss;
    int solved = 0;
    
    for(int r=0; r<NUM_ROUNDS; ++r) {
        array<promise<CubeSolution>, NUM_THREADS> cubePromises;
        array<future<CubeSolution>, NUM_THREADS> cube_tasks;
        array<thread, NUM_THREADS> threads;
    
        for(int i=0; i<NUM_THREADS; ++i) {
            cube_tasks[i] = cubePromises[i].get_future();
            threads[i] = thread(tryToSolveRandom, move(cubePromises[i]));
            threads[i].detach();
        }

        for(int i=0; i<NUM_THREADS; ++i) {
            cube_tasks[i].wait();    
            CubeSolution solution = cube_tasks[i].get();
            solved += solution.wasSolved;
            
            if(!solution.wasSolved) {
                ss << "Scramble: " << solution.initialCubeRepresentation
                    << " from scramble: " << solution.initialScramble
                    << " wasn't solved!" << endl;
            }
        }
        
        if((r % 1000 == 0) && r) {
            cout << "Checked " << (r*NUM_THREADS) << " out of " 
                 << ALL_TASKS << " random cubes." << endl;
        }
    }
    
    cout << ss.str() << endl;
    cout << "Solved: " << solved << " out of " << ALL_TASKS << "." << endl;
    BOOST_CHECK(solved == ALL_TASKS);
}
