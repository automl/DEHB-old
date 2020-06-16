#! /bin/bash

#SBATCH -a 1-3
#SBATCH -p bosch_cpu-cascadelake
#SBATCH -J 201_dehb
#SBATCH --mem 100000

iters=2000
runs=500
boundary='clip'

# Version 1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py \
        --iter $iters --runs $runs --dataset cifar10-valid --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py --verbose True \
        --iter $iters --runs $runs --dataset cifar100 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py --verbose True \
        --iter $iters --runs $runs --dataset ImageNet16-120 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

# Version 2

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py \
        --iter $iters --runs $runs --dataset cifar10-valid --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ --version 2
fi

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py --verbose True \
        --iter $iters --runs $runs --dataset cifar100 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ --version 2
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py --verbose True \
        --iter $iters --runs $runs --dataset ImageNet16-120 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ --version 2
fi

# Version 3

if [ 7 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py \
        --iter $iters --runs $runs --dataset cifar10-valid --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ --version 3
fi

if [ 8 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py --verbose True \
        --iter $iters --runs $runs --dataset cifar100 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ --version 3
fi

if [ 9 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas201/run_dehb_nas201.py --verbose True \
        --iter $iters --runs $runs --dataset ImageNet16-120 \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas201/results/ --version 3
fi


