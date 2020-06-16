#!/bin/bash

#SBATCH -a 1-6
#SBATCH -p bosch_cpu-cascadelake
#SBATCH -J pnet_re

iters=1900
runs=500

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_re_paramnet.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset adult
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_re_paramnet.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset higgs
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_re_paramnet.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset letter
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_re_paramnet.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset mnist
fi

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_re_paramnet.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset optdigits
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_re_paramnet.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset poker
fi

