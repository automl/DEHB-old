#! /bin/bash/

SBATCH -a 1-4

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
   bash dehb/examples/svm/scripts/run_svm_rs.py
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
   bash dehb/examples/svm/scripts/run_svm_bohb.py
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
   bash dehb/examples/svm/scripts/run_svm_hb.py
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
   bash dehb/examples/svm/scripts/run_svm_tpe.py
fi




