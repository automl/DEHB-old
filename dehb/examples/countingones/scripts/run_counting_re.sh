#!/bin/bash

#SBATCH -a 1-4
#SBATCH -p bosch_cpu-cascadelake
#SBATCH -J co_re

iters=1900
runs=500

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_re_countingones.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 4 --n_cat 4
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_re_countingones.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 8 --n_cat 8
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_re_countingones.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 16 --n_cat 16
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_re_countingones.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 32 --n_cat 32
fi
