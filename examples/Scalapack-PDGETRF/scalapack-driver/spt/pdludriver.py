#! /usr/bin/env python3

################################################################################

import numpy as np
import os
import mpi4py
from mpi4py import MPI
import sys
import time
################################################################################

# Paths

MACHINE_NAME = 'tmp'
TUNER_NAME = 'tmp'
ROOTDIR = os.path.abspath(os.path.join(os.path.realpath(__file__), os.pardir, os.pardir))
# SPTDIR = os.path.abspath(os.path.join(ROOTDIR, "spt"))
# SRCDIR = os.path.abspath(os.path.join(ROOTDIR, "src"))
BINDIR = os.path.abspath(os.path.join(ROOTDIR, "bin", MACHINE_NAME))
EXPDIR = os.path.abspath(os.path.join(ROOTDIR, "exp", MACHINE_NAME + '/' + TUNER_NAME))

################################################################################

def compile():

    global ROOTDIR

    os.system("cd %s; make;"%(ROOTDIR))

def clean():

    global ROOTDIR

    os.system("cd %s; make clean;"%(ROOTDIR))

################################################################################

def write_input(params, RUNDIR, niter=1):

    fin = open("%s/LU.in"%(RUNDIR), 'w')
    fin.write("%d\n"%(len(params) * niter))
    for param in params:
        for k in range(niter):
            # READ( NIN, FMT = 2222 ) FACTOR, MVAL, NVAL, MBVAL, NBVAL, PVAL, QVAL, THRESH
            # fin.write("%2s%6d%6d%6d%6d%6d%6d%20.13E\n"%(param[0], param[1], param[2], param[5], param[6], param[9], param[10],param[11]))
            fin.write("%2s%6d%6d%6d%6d%20.13E\n"%(param[0], param[1], param[4], param[7], param[8], param[9]))
    fin.close()

def execute(nproc, nthreads, npernode, RUNDIR):

    def v_parallel():
        # os.system("cd %s;"%(RUNDIR)) 
        # print('nimdda',RUNDIR)
        
        info = MPI.Info.Create()
        info.Set('env', 'OMP_NUM_THREADS=%d\n' %(nthreads))
        info.Set('npernode','%d'%(npernode))  # YL: npernode is deprecated in openmpi 4.0, but no other parameter (e.g. 'map-by') works
        
        
        # info.Set("add-hostfile", "myhostfile.txt")
        # info.Set("host", "myhostfile.txt")
         

       
        print('exec', "%s/pdludriver"%(BINDIR), 'args', "%s/"%(RUNDIR), 'nproc', nproc, 'nthreads', nthreads, 'npernode', npernode)#, info=mpi_info).Merge()# process_rank = comm.Get_rank()
        comm = MPI.COMM_SELF.Spawn("%s/pdludriver"%(BINDIR), args="%s/"%(RUNDIR), maxprocs=nproc,info=info)
        comm.Barrier()
        comm.Disconnect()
        # time.sleep(5.0)
        
        return 0


        # return os.system("cd %s; export OMP_PLACES=threads; export OMP_PROC_BIND=spread; export OMP_NUM_THREADS=%d; mpirun -c %d -n %d %s/pdludriver 2>> LU.err &  wait;"%(RUNDIR, nthreads, 2*nthreads, nproc, BINDIR))

##    err = v_sequential()
    err = v_parallel()
    if (err != 0):
        print("Error running ScaLAPACK: ", err)

    return

def read_output(params, RUNDIR, niter=1):

    fout = open("%s/LU.out"%(RUNDIR), 'r')
    times = np.ones(len(params))*float('Inf')
    idxparam = 0
    idxiter = 0
    for line in fout.readlines():
        words = line.split()
        # WRITE( NOUT, FMT = 9993 ) 'WALL', M, N, MB, NB, NPROW, NPCOL, WTIME( 1 ), TMFLOPS, PASSED, FRESID
        # WRITE( NOUT, FMT = 9993 ) 'WALL', M, N, NB, NRHS, NBRHS, NPROW, NPCOL, WTIME( 1 ), WTIME( 2 ), TMFLOPS, PASSED
        # print('words={}'.format(words))
        # print('params={}'.format(params))
        if (len(words) > 0 and words[0] == "WALL"):
            if (words[11] == "PASSED"):
                n  = int(words[2])
                nb = int(words[3])
                p  = int(words[6])
                q  = int(words[7])
                mytime = float(words[8])
                while (not ((n == params[idxparam][1])\
                        and (nb == params[idxparam][4])\
                        and (p == params[idxparam][7])\
                        and (q == params[idxparam][8]))):
                    idxparam += 1
                if (mytime < times[idxparam]):
                    times[idxparam] = mytime
            idxiter += 1
            if (idxiter >= niter):
                idxparam += 1
                idxiter = 0
    fout.close()

    return times

def pdludriver(params, niter=10,JOBID: int = None):

    global EXPDIR 
    global BINDIR
    global ROOTDIR

    MACHINE_NAME = os.environ['MACHINE_NAME']
    TUNER_NAME = os.environ['TUNER_NAME']
    BINDIR = os.path.abspath(os.path.join(ROOTDIR, "bin", MACHINE_NAME))
    EXPDIR = os.path.abspath(os.path.join(ROOTDIR, "exp", MACHINE_NAME + '/' + TUNER_NAME))

    if (JOBID==-1):  # -1 is the default value if jobid is not set from command line
        JOBID = os.getpid()
    RUNDIR = os.path.abspath(os.path.join(EXPDIR, str(JOBID)))
    # print('RUNDIR={}'.format(RUNDIR))
    os.makedirs("%s"%(RUNDIR),exist_ok=True)
    # print('nima',RUNDIR)

    # dtype = [("fac", 'U10'), ("m", int), ("n", int), ("nodes", int), ("cores", int), ("mb", int), ("nb", int), ("nthreads", int), ("nproc", int), ("p", int), ("q", int), ("thresh", float), ("npernode", int)]
    # params = [('LU', n, nodes, cores, nb, nthreads, nproc, p, q, 1., npernode)]
    dtype = [("fac", 'U10'), ("n", int), ("nodes", int), ("cores", int), ("nb", int), ("nthreads", int), ("nproc", int), ("p", int), ("q", int), ("thresh", float), ("npernode", int)]
    params = np.array(params, dtype=dtype)
    perm = np.argsort(params, order=["nproc", "nthreads"])
    invperm = np.argsort(perm)
    # idxproc = 8
    # idxth = 7
    # idxnpernode = 12
    idxproc = 6
    idxth = 5
    idxnpernode = 10
    times = np.array([])
    k_beg = 0
    k_end = 1
    while (k_end < len(params)):
        if ((params[perm[k_beg]][idxproc] != params[perm[k_end]][idxproc]) or (params[perm[k_beg]][idxth] != params[perm[k_end]][idxth])):
            write_input(params[perm[k_beg:k_end]], RUNDIR, niter=niter)
            execute(params[perm[k_beg]][idxproc], params[perm[k_beg]][idxth], params[perm[k_beg]][idxnpernode], RUNDIR)
            times2 = read_output(params[perm[k_beg:k_end]], RUNDIR, niter=niter)
            times = np.concatenate((times, times2))
            k_beg = k_end
        k_end += 1
    if (k_beg < len(params)):
        write_input(params[perm[k_beg:k_end]], RUNDIR, niter=niter)
        execute(params[perm[k_beg]][idxproc], params[perm[k_beg]][idxth], params[perm[k_beg]][idxnpernode], RUNDIR)
        times2 = read_output(params[perm[k_beg:k_end]], RUNDIR, niter=niter)
        times = np.concatenate((times, times2))
    times = times[invperm]

    os.system('rm -fr %s'%(RUNDIR))

    return times

if __name__ == "__main__":

    # Test

#    compile()
# params = [(  'LU', n,    nodes, cores, nb, nthreads, nproc, p, q, 1., npernode)]
    params = [('LU', 1000, 1, 8, 32, 2, 2, 2, 1, 1., 1),\
              ('LU', 1000, 1, 8, 32, 1, 1, 1, 1, 1., 1),\
              ('LU', 1000, 1, 8, 32, 2, 1, 1, 1, 1., 1),\
              ('LU',  100, 1, 8, 32, 2, 1, 1, 1, 1., 1),\
              ('LU', 1000, 1, 8, 32, 1, 2, 2, 1, 1., 1),\
              ('LU',  100, 1, 8, 32, 1, 2, 2, 1, 1., 1)]
    times = pdludriver(params, niter=3)
    print(times)
#    clean()

# vim: set ft=python:
