EXE		=
LIB		= .a
OBJ		= .o

MAKE		= make
AR		= ar
ARFLAGS		= -ruv
CAT		= cat
#CCS		= gcc
#CCP		= mpicc
#CCD		= gcc
CFLAGS		= -O3 -fPIC -DCOMMON_FILE_COMPRESS_GZ -DCOMMON_PTHREAD -DCOMMON_RANDOM_FIXED_SEED -DSCOTCH_RENAME  -Drestrict=__restrict -DIDXSIZE32
CLIBFLAGS	=
LDFLAGS		= -lz -lm  -pthread
CP		= cp
LEX		= flex -Pscotchyy -olex.yy.c
LN		= ln
MKDIR		= mkdir -p
MV		= mv
RANLIB		= ranlib
YACC		= bison -pscotchyy -y -b y
CCD = /Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.1.5/bin/mpicc
CCP = /Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.1.5/bin/mpicc
CCS = /Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.1.5/bin/mpicc