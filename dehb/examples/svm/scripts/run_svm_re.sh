#!/bin/bash

#SBATCH -a 1
#SBATCH -p bosch_cpu-cascadelake
#SBATCH -J svm_re

iters=1900
runs=500

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_re_svm.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/
fi

