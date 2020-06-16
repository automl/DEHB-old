#!/bin/bash

#SBATCH -a 1-4
#SBATCH -J co_dehb
#SBATCH -p bosch_cpu-cascadelake

iters=200
runs=500
boundary='clip'

# Version None

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 4 --n_cat 4 --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 8 --n_cat 8 --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 16 --n_cat 16 --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 32 --n_cat 32 --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

# Version 2

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 4 --n_cat 4 --version 2
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 8 --n_cat 8 --version 2
fi

if [ 7 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 16 --n_cat 16 --version 2
fi

if [ 8 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 32 --n_cat 32 --version 2
fi

# Version 3

if [ 9 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 4 --n_cat 4 --version 3
fi

if [ 10 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 8 --n_cat 8 --version 3
fi

if [ 11 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 16 --n_cat 16 --version 3
fi

if [ 12 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/countingones/run_dehb_countingones.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/countingones/results/ \
        --n_cont 32 --n_cat 32 --version 3
fi
