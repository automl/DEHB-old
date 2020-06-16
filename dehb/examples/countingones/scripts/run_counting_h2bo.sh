#!/bin/bash

#SBATCH -a 1-4

m="h2bo"
iters=150
runs=500

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
	for r1 in `seq 0 $runs`;
	do
	    PYTHONPATH=$PWD python3 dehb/examples/countingones/countingones.py --num_iterations $iters --run_id $r1 --method $m --dest_dir ~/DE_NAS/DEHB/dehb/examples/countingones/results/ --num_categoricals 4 --num_continuous 4;
	done
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
	for r2 in `seq 0 $runs`;
	do
	    PYTHONPATH=$PWD python3 dehb/examples/countingones/countingones.py --num_iterations $iters --run_id $r2 --method $m --dest_dir ~/DE_NAS/DEHB/dehb/examples/countingones/results/ --num_categoricals 8 --num_continuous 8;
	done
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
	for r3 in `seq 0 $runs`;
	do
	    PYTHONPATH=$PWD python3 dehb/examples/countingones/countingones.py --num_iterations $iters --run_id $r3 --method $m --dest_dir ~/DE_NAS/DEHB/dehb/examples/countingones/results/ --num_categoricals 16 --num_continuous 16;
	done
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
	for r4 in `seq 0 $runs`;
	do
	    PYTHONPATH=$PWD python3 dehb/examples/countingones/countingones.py --num_iterations $iters --run_id $r4 --method $m --dest_dir ~/DE_NAS/DEHB/dehb/examples/countingones/results/ --num_categoricals 32 --num_continuous 32;
	done
fi
