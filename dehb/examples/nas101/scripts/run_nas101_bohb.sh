#!/bin/bash

#SBATCH -a 4-7
#SBATCH -J 101_bohb
#SBATCH -p bosch_cpu-cascadelake
#SBATCH --mem 20000

runs=500
iters=2500

# Version 1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_bohb.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifara/ --benchmark nas_cifar10a
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_bohb.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifarb/ --benchmark nas_cifar10b
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_bohb.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifarc/ --benchmark nas_cifar10c
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_bohb.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure
fi

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_bohb.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_bohb.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion
fi

if [ 7 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_bohb.py \
        --n_iters $iters --runs $runs \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring
fi
