#!/bin/bash

#SBATCH -a 1-6

m="bohb"
iters=500
runs=500

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
	for r1 in `seq 0 $runs`;
	do
	    PYTHONPATH=$PWD python3 dehb/examples/paramnet/paramnet_surrogates.py --num_iterations $iters --run_id $r1 --method $m --dest_dir ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset adult
	done
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
	for r2 in `seq 0 $runs`;
	do
	    PYTHONPATH=$PWD python3 dehb/examples/paramnet/paramnet_surrogates.py --num_iterations $iters --run_id $r2 --method $m --dest_dir ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset higgs
	done
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
	for r3 in `seq 0 $runs`;
	do
	    PYTHONPATH=$PWD python3 dehb/examples/paramnet/paramnet_surrogates.py --num_iterations $iters --run_id $r3 --method $m --dest_dir ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset letter
	done
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
	for r4 in `seq 0 $runs`;
	do
	    PYTHONPATH=$PWD python3 dehb/examples/paramnet/paramnet_surrogates.py --num_iterations $iters --run_id $r4 --method $m --dest_dir ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset mnist
	done
fi

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
	for r5 in `seq 0 $runs`;
	do
	    PYTHONPATH=$PWD python3 dehb/examples/paramnet/paramnet_surrogates.py --num_iterations $iters --run_id $r5 --method $m --dest_dir ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset optdigits
	done
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
	for r6 in `seq 0 $runs`;
	do
	    PYTHONPATH=$PWD python3 dehb/examples/paramnet/paramnet_surrogates.py --num_iterations $iters --run_id $r6 --method $m --dest_dir ~/DE_NAS/DEHB/dehb/examples/paramnet/results/ --dataset poker
	done
fi
