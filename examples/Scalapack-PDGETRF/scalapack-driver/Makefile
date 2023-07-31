all: driver

ifndef MACHINE_NAME
MACHINE_NAME=$(NERSC_HOST)
endif

BIN=bin/$(MACHINE_NAME)
EXP=exp/$(MACHINE_NAME)
SRC=src

CC=mpicc
FC=mpif90
CFLAGS= -O3 -Wall -fPIC # -std=c11 -fopenmp
LDFLAGS= -shared
# LIBS = -L$(MKLROOT)/lib/intel64 -lmkl_gf_lp64 -lmkl_core -lmkl_gnu_thread -lmkl_blacs_openmpi_lp64 -lmkl_scalapack_lp64 -lmkl_avx -lmkl_def -lpthread -lm -lgomp
openblasversion=0.3.23
lapackversion=3.11
GPTUNEROOT=/Users/makotomorishita/Desktop/LBNL/GPTune
BREWPATH=/opt/homebrew/Cellar
BLAS_LIB=$(BREWPATH)/openblas/$(openblasversion)/lib/libblas.dylib
LAPACK_LIB=$(BREWPATH)/lapack/$(lapackversion)/lib/liblapack.dylib
SCALAPACK_LIB=$(GPTUNEROOT)/scalapack-2.2.0/build/install/lib/libscalapack.dylib
LIBRARY_PATH=$(GPTUNEROOT)/openmpi-4.1.5/lib
LIBS = $(BLAS_LIB) $(LAPACK_LIB) $(SCALAPACK_LIB) -L$(LIBRARY_PATH)

build_dirs:
	mkdir -p $(BIN)
	mkdir -p $(EXP)

# Compile
$(BIN)/pdgetrrv.o:$(SRC)/pdgetrrv.f Makefile
	$(FC) $(CFLAGS) -o $(BIN)/pdgetrrv.o -c $(SRC)/pdgetrrv.f
$(BIN)/pdlaschk.o:$(SRC)/pdlaschk.f Makefile
	$(FC) $(CFLAGS) -o $(BIN)/pdlaschk.o -c $(SRC)/pdlaschk.f
$(BIN)/pdludriver.o:$(SRC)/pdludriver.f Makefile
	$(FC) $(CFLAGS) -o $(BIN)/pdludriver.o -c $(SRC)/pdludriver.f
$(BIN)/pdlafchk.o:$(SRC)/pdlafchk.f Makefile
	$(FC) $(CFLAGS) -o $(BIN)/pdlafchk.o -c $(SRC)/pdlafchk.f
$(BIN)/pdluinfo.o:$(SRC)/pdluinfo.f Makefile
	$(FC) $(CFLAGS) -o $(BIN)/pdluinfo.o -c $(SRC)/pdluinfo.f
$(BIN)/pdmatgen.o:$(SRC)/pdmatgen.f Makefile
	$(FC) $(CFLAGS) -o $(BIN)/pdmatgen.o -c $(SRC)/pdmatgen.f
$(BIN)/pmatgeninc.o:$(SRC)/pmatgeninc.f Makefile
	$(FC) $(CFLAGS) -o $(BIN)/pmatgeninc.o -c $(SRC)/pmatgeninc.f

# Link
driver:build_dirs $(BIN)/pdluinfo.o $(BIN)/pdgetrrv.o $(BIN)/pdlaschk.o $(BIN)/pdlafchk.o $(BIN)/pmatgeninc.o $(BIN)/pdmatgen.o $(BIN)/pdludriver.o Makefile
	$(FC) $(CFLAGS) -o $(BIN)/pdludriver $(LIBS) $(BIN)/pdluinfo.o $(BIN)/pdgetrrv.o $(BIN)/pdlaschk.o $(BIN)/pdlafchk.o $(BIN)/pmatgeninc.o $(BIN)/pdmatgen.o $(BIN)/pdludriver.o

clean:
	rm -f $(BIN)/pdludriver.o $(BIN)/pdluinfo.o $(BIN)/pdgetrrv.o $(BIN)/pdlaschk.o $(BIN)/pdlafchk.o $(BIN)/pmatgeninc.o $(BIN)/pdmatgen.o $(BIN)/pdludriver

cleanall:
	rm -fr bin/*/*.o bin/*/pdludriver exp/*/*

