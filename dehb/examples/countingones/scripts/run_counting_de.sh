#!/bin/bash

#SBATCH -a 1-4
#SBATCH -p bosch_cpu-cascadelake
# SBATCH -J co_de

gens=100
runs=500
pop=20
async=$1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_de_countingones.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
    	--n_cont 4 --n_cat 4 --async $async
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_de_countingones.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
    	--n_cont 8 --n_cat 8 --async $async
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_de_countingones.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
    	--n_cont 16 --n_cat 16 --async $async
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_de_countingones.py \
    	--gens $gens --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
    	--n_cont 32 --n_cat 32 --async $async
fi

