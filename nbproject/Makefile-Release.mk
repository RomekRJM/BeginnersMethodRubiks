#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=g++
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-MacOSX
CND_DLIB_EXT=dylib
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/beginners_method.o \
	${OBJECTDIR}/cube.o \
	${OBJECTDIR}/cube_algorithms.o \
	${OBJECTDIR}/cube_generator.o \
	${OBJECTDIR}/cube_logging.o \
	${OBJECTDIR}/method_steps.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

# Test Object Files
TESTOBJECTFILES= \
	${TESTDIR}/test_beginners_method.o \
	${TESTDIR}/test_cube.o \
	${TESTDIR}/test_cube_algorithms.o \
	${TESTDIR}/test_cube_generator.o \
	${TESTDIR}/test_method_steps.o \
	${TESTDIR}/test_rcs.o \
	${TESTDIR}/test_solve_random.o \
	${TESTDIR}/test_suite.o

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libbeginnersmethodrubiks.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libbeginnersmethodrubiks.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libbeginnersmethodrubiks.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libbeginnersmethodrubiks.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libbeginnersmethodrubiks.a

${OBJECTDIR}/beginners_method.o: beginners_method.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/beginners_method.o beginners_method.cpp

${OBJECTDIR}/cube.o: cube.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cube.o cube.cpp

${OBJECTDIR}/cube_algorithms.o: cube_algorithms.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cube_algorithms.o cube_algorithms.cpp

${OBJECTDIR}/cube_generator.o: cube_generator.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cube_generator.o cube_generator.cpp

${OBJECTDIR}/cube_logging.o: cube_logging.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cube_logging.o cube_logging.cpp

${OBJECTDIR}/method_steps.o: method_steps.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/method_steps.o method_steps.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-tests-subprojects .build-conf ${TESTFILES}
.build-tests-subprojects:

${TESTDIR}/TestFiles/f1: ${TESTDIR}/test_beginners_method.o ${TESTDIR}/test_cube.o ${TESTDIR}/test_cube_algorithms.o ${TESTDIR}/test_cube_generator.o ${TESTDIR}/test_method_steps.o ${TESTDIR}/test_rcs.o ${TESTDIR}/test_solve_random.o ${TESTDIR}/test_suite.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS}   


${TESTDIR}/test_beginners_method.o: test_beginners_method.cpp 
	${MKDIR} -p ${TESTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/test_beginners_method.o test_beginners_method.cpp


${TESTDIR}/test_cube.o: test_cube.cpp 
	${MKDIR} -p ${TESTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/test_cube.o test_cube.cpp


${TESTDIR}/test_cube_algorithms.o: test_cube_algorithms.cpp 
	${MKDIR} -p ${TESTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/test_cube_algorithms.o test_cube_algorithms.cpp


${TESTDIR}/test_cube_generator.o: test_cube_generator.cpp 
	${MKDIR} -p ${TESTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/test_cube_generator.o test_cube_generator.cpp


${TESTDIR}/test_method_steps.o: test_method_steps.cpp 
	${MKDIR} -p ${TESTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/test_method_steps.o test_method_steps.cpp


${TESTDIR}/test_rcs.o: test_rcs.cpp 
	${MKDIR} -p ${TESTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/test_rcs.o test_rcs.cpp


${TESTDIR}/test_solve_random.o: test_solve_random.cpp 
	${MKDIR} -p ${TESTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/test_solve_random.o test_solve_random.cpp


${TESTDIR}/test_suite.o: test_suite.cpp 
	${MKDIR} -p ${TESTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/test_suite.o test_suite.cpp


${OBJECTDIR}/beginners_method_nomain.o: ${OBJECTDIR}/beginners_method.o beginners_method.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/beginners_method.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/beginners_method_nomain.o beginners_method.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/beginners_method.o ${OBJECTDIR}/beginners_method_nomain.o;\
	fi

${OBJECTDIR}/cube_nomain.o: ${OBJECTDIR}/cube.o cube.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/cube.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cube_nomain.o cube.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/cube.o ${OBJECTDIR}/cube_nomain.o;\
	fi

${OBJECTDIR}/cube_algorithms_nomain.o: ${OBJECTDIR}/cube_algorithms.o cube_algorithms.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/cube_algorithms.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cube_algorithms_nomain.o cube_algorithms.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/cube_algorithms.o ${OBJECTDIR}/cube_algorithms_nomain.o;\
	fi

${OBJECTDIR}/cube_generator_nomain.o: ${OBJECTDIR}/cube_generator.o cube_generator.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/cube_generator.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cube_generator_nomain.o cube_generator.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/cube_generator.o ${OBJECTDIR}/cube_generator_nomain.o;\
	fi

${OBJECTDIR}/cube_logging_nomain.o: ${OBJECTDIR}/cube_logging.o cube_logging.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/cube_logging.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cube_logging_nomain.o cube_logging.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/cube_logging.o ${OBJECTDIR}/cube_logging_nomain.o;\
	fi

${OBJECTDIR}/method_steps_nomain.o: ${OBJECTDIR}/method_steps.o method_steps.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/method_steps.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/method_steps_nomain.o method_steps.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/method_steps.o ${OBJECTDIR}/method_steps_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
