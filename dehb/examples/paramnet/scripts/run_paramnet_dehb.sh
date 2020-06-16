#!/bin/bash

#SBATCH -a 1-6
#SBATCH -J pnet_dehb
#SBATCH -p bosch_cpu-cascadelake


iters=1000
runs=500
boundary='clip'


# Version 1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset adult \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset higgs \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset letter \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset mnist \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset optdigits \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset poker \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

# Version 2

if [ 7 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset adult \
        --version 2
fi

if [ 8 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset higgs \
        --version 2
fi

if [ 9 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset letter \
        --version 2
fi

if [ 10 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset mnist \
        --version 2
fi

if [ 11 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset optdigits \
        --version 2
fi

if [ 12 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset poker \
        --version 2
fi

# Version 3

if [ 13 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset adult \
        --version 3
fi

if [ 14 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset higgs \
        --version 3
fi

if [ 15 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset letter \
        --version 3
fi

if [ 16 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset mnist \
        --version 3
fi

if [ 17 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset optdigits \
        --version 3
fi

if [ 18 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/paramnet/run_dehb_paramnet.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset poker \
        --version 3
fi

