#!/bin/bash

#SBATCH -a 1-6
#SBATCH -p bosch_cpu-cascadelake
# SBATCH -J pnet_de

gens=100
runs=500
pop=20
async=$1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_de_paramnet.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset adult --async $async
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_de_paramnet.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset higgs --async $async
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_de_paramnet.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset letter --async $async
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_de_paramnet.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset mnist --async $async
fi

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_de_paramnet.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset optdigits --async $async
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_de_paramnet.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset poker --async $async
fi

