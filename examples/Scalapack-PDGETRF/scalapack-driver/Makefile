all: driver

ifndef MACHINE_NAME
MACHINE_NAME=$(NERSC_HOST)
endif

BIN=bin/$(MACHINE_NAME)
EXP=exp/$(MACHINE_NAME)
SRC=src

CC=mpicc
FC=mpif90
CFLAGS= -O3 -Wall -fPIC -std=c11 -fopenmp
LDFLAGS= -shared
LIBS = -L$(MKLROOT)/lib/intel64 -lmkl_gf_lp64 -lmkl_core -lmkl_gnu_thread -lmkl_blacs_openmpi_lp64 -lmkl_scalapack_lp64 -lmkl_avx -lmkl_def -lpthread -lm -lgomp

build_dirs:
	mkdir -p $(BIN)
	mkdir -p $(EXP)

# Compile
$(BIN)/pcgetrrv.o:$(SRC)/pcgetrrv.f Makefile
	$(FC) $(CFLAGS) -o $(BIN)/pcgetrrv.o -c $(SRC)/pcgetrrv.f
$(BIN)/pclaschk.o:$(SRC)/pclaschk.f Makefile
	$(FC) $(CFLAGS) -o $(BIN)/pclaschk.o -c $(SRC)/pclaschk.f
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
driver:build_dirs $(BIN)/pdluinfo.o $(BIN)/pcgetrrv.o $(BIN)/pclaschk.o $(BIN)/pdlafchk.o $(BIN)/pdgeqlrv.o $(BIN)/pmatgeninc.o $(BIN)/pdmatgen.o $(BIN)/pdludriver.o Makefile
	$(FC) $(CFLAGS) -o $(BIN)/pdludriver $(LIBS) $(BIN)/pdluinfo.o $(BIN)/pclaschk.o $(BIN)/pcgetrrv.o $(BIN)/pdlafchk.o $(BIN)/pdgeqlrv.o $(BIN)/pmatgeninc.o$ (BIN)/pdmatgen.o

clean:
	rm -f $(BIN)/pdludriver $(BIN)/pdluinfo.o $(BIN)/pcgetrrv.o $(BIN)/pclaschk.o $(BIN)/pdlafchk.o $(BIN)/pdgeqlrv.o $(BIN)/pmatgeninc.o $(BIN)/pdmatgen.o

cleanall:
	rm -fr bin/*/*.o bin/*/pdludriver exp/*/*

