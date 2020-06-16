#!/bin/bash

#SBATCH -a 1
#SBATCH -J svm_dehb
#SBATCH -p bosch_cpu-cascadelake

iters=100
runs=500
boundary='clip'

# Version 1.0

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ \
        --folder "dehb_"$boundary --boundary_fix_type $boundary
fi

# Version 1.1

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/
fi

# Version 3.0

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/
fi

# Version 3.1

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/
fi

# Version 3.2

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 3.2
fi

# Version 4.0

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 4
fi

# Version 4.1

if [ 7 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 4.1
fi

# Version 4.2

if [ 8 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 4.2
fi

# Version 5.0

if [ 9 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 5
fi

# Version 5.2

if [ 10 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 5.2
fi

# Version BOHB0

if [ 11 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version bohb0
fi

# Version BOHB1

if [ 12 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version bohb1
fi

# Version BOHB2

if [ 13 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version bohb2
fi

# Version 6.0

if [ 14 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 6
fi

# Version 6.1

if [ 15 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 6.1
fi

# Version 6.1.2

if [ 16 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 6.1.2
fi

# Version 6.2

if [ 17 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 6.2
fi

# Version 6.2.2

if [ 18 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 6.2.2
fi

# Version 6.3

if [ 19 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters6 --gens $gens --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 6.3
fi

# Version 6.3.2

if [ 20 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters6 --gens $gens --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 6.3.2
fi

# Version 7.0

if [ 21 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters6 --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 7
fi

# Version 7.1

if [ 22 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters6 --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 7.1
fi

# Version 4.2.2

if [ 23 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 4.2.2
fi

# Version 4.2.3

if [ 24 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 4.2.3
fi

# Version 6.3.3

if [ 25 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 6.3.3
fi

# Version 6.3.4

if [ 26 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 6.3.4
fi

# Version 6.3.5

if [ 27 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 6.3.5
fi

# Version a0

if [ 28 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version a0
fi

# Version a1

if [ 29 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version a1
fi

# Version a2

if [ 30 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version a2
fi

# Version 1

if [ 31 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 1
fi

# Version 2

if [ 32 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 2
fi

# Version 3

if [ 33 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/svm/run_dehb_svm.py \
        --iter $iters --runs $runs6 --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/svm/results/ --version 3
fi

