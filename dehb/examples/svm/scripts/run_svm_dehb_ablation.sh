#!/bin/bash

#SBATCH -a 1
#SBATCH -J svm_dehb
#SBATCH -p bosch_cpu-cascadelake

iters=100
runs=500
F=$1
Cr=$2

# Version 1.0

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ \
        --folder "dehb_"$F"_"$Cr --mutation_factor $F --crossover_prob $Cr
fi

