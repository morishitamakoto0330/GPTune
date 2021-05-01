#! /usr/bin/env python3

"""
Example of invocation of this script:

mpirun -n 1 python scalapack_MLA.py -mmax 5000 -nmax 5000 -nprocmin_pernode 1 -ntask 5 -nrun 10 -jobid 0 -tla 0

where:
    -mmax (nmax) is the maximum number of rows (columns) in a matrix
    -nprocmin_pernode is the minimum number of MPIs per node for launching the application code
    -ntask is the number of different matrix sizes that will be tuned
    -nrun is the number of calls per task 
    -jobid is optional. You can always set it to 0.
    -tla is whether TLA is used after MLA
"""

################################################################################
import sys
import os
sys.path.insert(0, os.path.abspath(__file__ + "/../../../GPTune/"))
sys.path.insert(0, os.path.abspath(__file__ + "/../scalapack-driver/spt/"))

from pdqrdriver import pdqrdriver
from autotune.search import *
from autotune.space import *
from autotune.problem import *
from gptune import * # import all

import numpy as np
import argparse
import pickle
from random import *
from callopentuner import OpenTuner
from callhpbandster import HpBandSter
import time
import math


################################################################################

#''' The objective function required by GPTune. '''
## should always use this name for user-defined objective function
#def objectives(point):
#
########################################## 
###### constants defined in TuningProblem
#    nodes = point['nodes']
#    cores = point['cores']
#    bunit = point['bunit']	
##########################################
#
#    m = point['m']
#    n = point['n']
#    mb = point['mb']*bunit
#    nb = point['nb']*bunit
#    p = point['p']
#    npernode = 2**point['npernode']
#    nproc = nodes*npernode
#    nthreads = int(cores / npernode)  
#
#    # this becomes useful when the parameters returned by TLA1 do not respect the constraints
#    if(nproc == 0 or p == 0 or nproc < p):
#        print('Warning: wrong parameters for objective function!!!')
#        return 1e12
#    q = int(nproc / p)
#    nproc = p*q
#    params = [('QR', m, n, nodes, cores, mb, nb, nthreads, nproc, p, q, 1., npernode)]
#
#    print(params, ' scalapack starts ') 
#    elapsedtime = pdqrdriver(params, niter=2, JOBID=JOBID)
#    print(params, ' scalapack time: ', elapsedtime)
#
#    return elapsedtime

def cst1(mb,p,m,bunit):
    return mb*bunit * p <= m
def cst2(nb,npernode,n,p,nodes,bunit):
    return nb * bunit * nodes * 2**npernode <= n * p
def cst3(npernode,p,nodes):
    return nodes * 2**npernode >= p

def main():

#    global JOBID
#
#    # Parse command line arguments
#    args = parse_args()
#
#    mmax = args.mmax
#    nmax = args.nmax
#    ntask = args.ntask
#    nprocmin_pernode = args.nprocmin_pernode
#
#    (machine, processor, nodes, cores) = GetMachineConfiguration()
#    print ("machine: " + machine + " processor: " + processor + " num_nodes: " + str(nodes) + " num_cores: " + str(cores))
#
#    nprocmax = nodes*cores
#
#    bunit=8     # the block size is multiple of bunit
#    mmin=128
#    nmin=128
#
#    m = Integer(mmin, mmax, transform="normalize", name="m")
#    n = Integer(nmin, nmax, transform="normalize", name="n")
#    mb = Integer(1, 16, transform="normalize", name="mb")
#    nb = Integer(1, 16, transform="normalize", name="nb")
#    npernode     = Integer     (int(math.log2(nprocmin_pernode)), int(math.log2(cores)), transform="normalize", name="npernode")
#    p = Integer(1, nprocmax, transform="normalize", name="p")
#    r = Real(float("-Inf"), float("Inf"), name="r")
#
#    IS = Space([m, n])
#    PS = Space([mb, nb, npernode, p])
#    OS = Space([r])
#    
#    constraints = {"cst1": cst1, "cst2": cst2, "cst3": cst3}
#    constants={"nodes":nodes,"cores":cores,"bunit":bunit}
#    print(IS, PS, OS, constraints)
#
#    problem = TuningProblem(IS, PS, OS, None, constraints, None, constants=constants)
#    computer = Computer(nodes=nodes, cores=cores, hosts=None)
#
#    """ Set and validate options """
#    options = Options()
#    options['model_class'] = 'Model_LCM'
#
#    seed(1)
#    if ntask == 1:
#        giventask = [[mmax,nmax]]
#    else:
#        giventask = [[randint(mmin,mmax),randint(nmin,nmax)] for i in range(ntask)]
#    # # giventask = [[2000, 2000]]
#    # giventask = [[177, 1303],[367, 381],[1990, 1850],[1123, 1046],[200, 143],[788, 1133],[286, 1673],[1430, 512],[1419, 1320],[622, 263] ]
#    # giventask = [[177, 1303],[367, 381]]
#    ntask=len(giventask)
#    
#    data = Data(problem)
#    gt = GPTune(problem, computer=computer, data=data, options=options, driverabspath=os.path.abspath(__file__))
#    (models, model_function) = gt.LoadSurrogateModel(Igiven = giventask, method = "max_evals")

    (models, model_function) = LoadSurrogateModelFunction()

    giventask = [[4000, 4000]]
    " A quick validation"
    ret = model_function({
        "m": giventask[0][0],
        "n": giventask[0][1],
        "mb": 16,
        "nb": 16,
        "npernode": 5,
        "p": 13})
    print ("func return: ", ret)

    ret = model_function({
        "m": giventask[0][0],
        "n": giventask[0][1],
        "mb": 1,
        "nb": 1,
        "npernode": 1,
        "p": 1})
    print ("func return: ", ret)

def parse_args():

    parser = argparse.ArgumentParser()

    # Problem related arguments
    parser.add_argument('-mmax', type=int, default=-1, help='Number of rows')
    parser.add_argument('-nmax', type=int, default=-1, help='Number of columns')
    # Machine related arguments
    parser.add_argument('-nodes', type=int, default=1,help='Number of machine nodes')
    parser.add_argument('-cores', type=int, default=1,help='Number of cores per machine node')
    parser.add_argument('-nprocmin_pernode', type=int, default=1,help='Minimum number of MPIs per machine node for the application code')
    parser.add_argument('-machine', type=str,help='Name of the computer (not hostname)')
    # Algorithm related arguments    
    parser.add_argument('-optimization', type=str,default='GPTune', help='Optimization algorithm (opentuner, hpbandster, GPTune)')
    parser.add_argument('-tla', type=int, default=0, help='Whether perform TLA after MLA when optimization is GPTune')    
    parser.add_argument('-ntask', type=int, default=-1, help='Number of tasks')
    parser.add_argument('-nrun', type=int, help='Number of runs per task')
    parser.add_argument('-truns', type=int, help='Time of runs')
    # Experiment related arguments
    # 0 means interactive execution (not batch)
    parser.add_argument('-jobid', type=int, default=-1, help='ID of the batch job')

    args = parser.parse_args()

    return args

if __name__ == "__main__":
    main()
