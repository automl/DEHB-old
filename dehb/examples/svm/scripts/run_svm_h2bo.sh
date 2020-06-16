#!/bin/bash

m="h2bo"

iters=500
runs=500

for r in `seq 0 $runs`;
do
    PYTHONPATH=$PWD python3 dehb/examples/svm/svm_surrogate.py --num_iterations $iters --run_id $r --method $m --dest_dir ~/DE_NAS/DEHB/dehb/examples/svm/results/
done
