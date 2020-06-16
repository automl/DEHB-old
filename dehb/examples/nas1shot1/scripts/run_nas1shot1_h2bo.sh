#!/bin/bash

#SBATCH -a 1-3

# NAS-Bench-1shot1

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
   for (( i1=0; i1<501; i++ ));
   do
      PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_h2bo.py --run_id $i1 --n_iters 1500 --output_path dehb/examples/nas1shot1/results/ --search_space 1
   done
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
   for (( i2=0; i2<501; i2++ ));
   do
      PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_h2bo.py --run_id $i12 --n_iters 1500 --output_path dehb/examples/nas1shot1/results/ --search_space 2
   done
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
   for (( i3=0; i3<501; i3++ ));
   do
      PYTHONPATH=$PWD python3 dehb/examples/nas1shot1/run_h2bo.py --run_id $i3 --n_iters 1500 --output_path dehb/examples/nas1shot1/results/ --search_space 3
   done
fi

