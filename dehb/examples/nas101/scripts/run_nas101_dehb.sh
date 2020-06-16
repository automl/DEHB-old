#!/bin/bash

#SBATCH -a 1-7
#SBATCH -J 101_dehb
#SBATCH -p bosch_cpu-cascadelake
#SBATCH --mem 20000

iters=2500
runs=500
iters=2500
boundary='clip'

# Version 1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifara/ --benchmark nas_cifar10a \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifarb/ --benchmark nas_cifar10b \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifarc/ --benchmark nas_cifar10c \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 7 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi


# Version 2

if [ 8 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifara/ --benchmark nas_cifar10a \
        --version 2
fi

if [ 9 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifarb/ --benchmark nas_cifar10b \
        --version 2
fi

if [ 10 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifarc/ --benchmark nas_cifar10c \
        --version 2
fi

if [ 11 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 2
fi

if [ 12 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 2
fi

if [ 13 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 2
fi

if [ 14 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 2
fi

# Version 3

if [ 15 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifara/ --benchmark nas_cifar10a \
        --version 3
fi

if [ 16 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifarb/ --benchmark nas_cifar10b \
        --version 3
fi

if [ 17 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/cifarc/ --benchmark nas_cifar10c \
        --version 3
fi

if [ 18 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 3
fi

if [ 19 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 3
fi

if [ 20 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 3
fi

if [ 21 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 3
fi

