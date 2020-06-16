#! /bin/bash

#SBATCH -a 1-7

# NAS-101

if [ 1 -eq $SLURM_ARRAY_TASK_ID ]; then
   PYTHONPATH=$PWD python3 dehb/examples/nas101/run_h2bo.py --n_iters 1500 --runs 500 \
     	--data_dir ../nas_benchmarks-development/tabular_benchmarks/fcnet_tabular_benchmarks/ \
   	 	--output_path dehb/examples/nas101/results/cifara --benchmark nas_cifar10a
fi

if [ 2 -eq $SLURM_ARRAY_TASK_ID ]; then
   PYTHONPATH=$PWD python3 dehb/examples/nas101/run_h2bo.py --n_iters 1500 --runs 500 \
   	 	--data_dir ../nas_benchmarks-development/tabular_benchmarks/fcnet_tabular_benchmarks/ \
   	 	--output_path dehb/examples/nas101/results/cifarb --benchmark nas_cifar10b
fi

if [ 3 -eq $SLURM_ARRAY_TASK_ID ]; then
   PYTHONPATH=$PWD python3 dehb/examples/nas101/run_h2bo.py --n_iters 1500 --runs 500 \
   	 	--data_dir ../nas_benchmarks-development/tabular_benchmarks/fcnet_tabular_benchmarks/ \
   	 	--output_path dehb/examples/nas101/results/cifarc --benchmark nas_cifar10c
fi

if [ 4 -eq $SLURM_ARRAY_TASK_ID ]; then
   PYTHONPATH=$PWD python3 dehb/examples/nas101/run_h2bo.py --n_iters 1500 --runs 500 \
   	 	--data_dir ../nas_benchmarks-development/tabular_benchmarks/fcnet_tabular_benchmarks/ \
   	 	--output_path dehb/examples/nas101/results/protein --benchmark protein_structure
fi

if [ 5 -eq $SLURM_ARRAY_TASK_ID ]; then
   PYTHONPATH=$PWD python3 dehb/examples/nas101/run_h2bo.py --n_iters 1500 --runs 500 \
   	 	--data_dir ../nas_benchmarks-development/tabular_benchmarks/fcnet_tabular_benchmarks/ \
   	 	--output_path dehb/examples/nas101/results/naval --benchmark naval_propulsion
fi

if [ 6 -eq $SLURM_ARRAY_TASK_ID ]; then
   PYTHONPATH=$PWD python3 dehb/examples/nas101/run_h2bo.py --n_iters 1500 --runs 500 \
   	 	--data_dir ../nas_benchmarks-development/tabular_benchmarks/fcnet_tabular_benchmarks/ \
   	 	--output_path dehb/examples/nas101/results/slice --benchmark slice_localization
fi

if [ 7 -eq $SLURM_ARRAY_TASK_ID ]; then
   PYTHONPATH=$PWD python3 dehb/examples/nas101/run_h2bo.py --n_iters 1500 --runs 500 \
   	 	--data_dir ../nas_benchmarks-development/tabular_benchmarks/fcnet_tabular_benchmarks/ \
   	 	--output_path dehb/examples/nas101/results/parkinsons --benchmark parkinsons_telemonitoring
fi
