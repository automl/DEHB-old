#!/bin/bash

#SBATCH -a 1-3
#SBATCH -J 1s1_dehb
#SBATCH -p bosch_cpu-cascadelake


iters=2500
runs=500
boundary='clip'

# Version 1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 1 \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 2 \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 3 \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

# Version 2

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 1 \
        --version 2
fi

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 2 \
        --version 2
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 3 \
        --version 2
fi


# Version 3

if [ 7 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 1 \
        --version 3
fi

if [ 8 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 2 \
        --version 3
fi

if [ 9 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_dehb_nas1shot1.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas1shot1/results/ --search_space 3 \
        --version 3
fi

