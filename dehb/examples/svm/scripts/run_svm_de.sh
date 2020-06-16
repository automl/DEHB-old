#!/bin/bash

#SBATCH -a 1
#SBATCH -p bosch_cpu-cascadelake
# SBATCH -J svm_de

iters=100
runs=500
pop=20
async=$1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_de_svm.py \
    	--gens $iters --runs $runs --pop_size $pop --verbose True \
    	--output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --async $async
fi

