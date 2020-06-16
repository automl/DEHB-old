#!/bin/bash

#SBATCH -a 1-40

iters=100
runs=500
gens=1
iters4=50
iters6=200

# Version 1.0

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens 5 --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 1.0
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens 5 --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 1.0
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens 5 --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 1.0
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens 5 --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 1.0
fi

# Version 1.1

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens 5 --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 1.1
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens 5 --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 1.1
fi

if [ 7 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens 5 --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 1.1
fi

if [ 8 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens 5 --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 1.1
fi

# Version 3.0

if [ 9 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 3
fi

if [ 10 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 3
fi

if [ 11 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 3
fi

if [ 12 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 3
fi

# Version 3.1

if [ 13 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 3.1
fi

if [ 14 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 3.1
fi

if [ 15 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 3.1
fi

if [ 16 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 3.1
fi

# Version 3.2

if [ 17 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 3.2
fi

if [ 18 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 3.2
fi

if [ 19 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 3.2
fi

if [ 20 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 3.2
fi

# Version 4.2

if [ 21 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters4 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 4.2
fi

if [ 22 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters4 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 4.2
fi

if [ 23 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters4 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 4.2
fi

if [ 24 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters4 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 4.2
fi

# Version 6.0

if [ 25 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 6
fi

if [ 26 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 6
fi

if [ 27 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 6
fi

if [ 28 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 6
fi

# Version 6.1

if [ 29 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 6.1
fi

if [ 30 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 6.1
fi

if [ 31 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 6.1
fi

if [ 32 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 6.1
fi

# Version 6.0

if [ 33 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 6
fi

if [ 34 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 6
fi

if [ 35 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 6
fi

if [ 36 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 6
fi

# Version 6.1

if [ 37 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/protein/ --benchmark protein_structure \
        --version 6.1
fi

if [ 38 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/slice/ --benchmark slice_localization \
        --version 6.1
fi

if [ 39 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/naval/ --benchmark naval_propulsion \
        --version 6.1
fi

if [ 40 -eq $SLURM_ARRAY_TASK_ID ]; then
    PYTHONPATH=$PWD python3 dehb/examples/nas101/run_dehb_nas101.py \
        --iter $iters6 --gens $gens --runs $runs --verbose True \
        --output_path ~/DE_NAS/DEHB/dehb/examples/nas101/results/parkinsons/ --benchmark parkinsons_telemonitoring \
        --version 6.1
fi
