#! /bin/bash/

## to be run as `bash plot_all.sh number_of_runs regret_type`
## example: bash plot_all.sh 500 validation


# NAS-Bench-101 + NAS-HPO-Bench

declare -a bench1=("cifara" "cifarb" "cifarc" "protein" "slice" "naval" "parkinsons")
declare -a bench2=("CifarA" "CifarB" "CifarC" "Protein" "Slice" "Naval" "Parkinsons")

benchmarks=${#bench1[@]}

for (( b=0; b<${benchmarks}; b++ ));
do
    PYTHONPATH=$PWD python3 dehb/utils/plot_regret.py --path dehb/examples/nas101/results/${bench1[$b]}/ \
    	--file dehb/examples/utils/methods.txt --n_runs $1 \
        --name $2"_"${bench1[$b]} --title ${bench2[$b]} \
        --output_path dehb/examples/plots/ --benchmark 101 --limit 1e7 --regret $2
done

# NAS-1shot1

declare -a bench1=("1" "2" "3")

benchmarks=${#bench1[@]}

for (( b=0; b<${benchmarks}; b++ ));
do
    PYTHONPATH=$PWD python3 dehb/utils/plot_regret.py --path dehb/examples/nas1shot1/results/ \
    	--file dehb/examples/utils/methods_1shot1.txt --n_runs $1 \
        --name $2"_ss"${bench1[$b]} --title "Search Space "${bench1[$b]} \
        --output_path dehb/examples/plots/ --benchmark 1shot1 --bench_type ${bench1[$b]} --limit 1e7 --regret $2
done

# CountingOnes

declare -a bench1=("4+4" "8+8" "16+16" "32+32")

benchmarks=${#bench1[@]}

for (( b=0; b<${benchmarks}; b++ ));
do
    PYTHONPATH=$PWD python3 dehb/utils/plot_regret.py --path dehb/examples/countingones/results/${bench1[$b]} \
    	--file dehb/examples/utils/methods.txt --n_runs $1 \
        --name $2"_"${bench1[$b]} --title ${bench1[$b]} \
        --output_path dehb/examples/plots/ --benchmark countingones --limit 1e6 --regret $2
done

# ParamNet

declare -a bench1=("adult" "higgs" "letter" "mnist" "optdigits" "poker")
declare -a bench2=("Adult" "Higgs" "Letter" "Mnist" "Optdigits" "Poker")

benchmarks=${#bench1[@]}

for (( b=0; b<${benchmarks}; b++ ));
do
    PYTHONPATH=$PWD python3 dehb/utils/plot_regret.py --path dehb/examples/paramnet/results/${bench1[$b]} \
    	--file dehb/examples/utils/methods.txt --n_runs $1 \
        --name $2"_"${bench1[$b]} --title ${bench2[$b]} \
        --output_path dehb/examples/plots/ --benchmark paramnet --limit 1e6 --regret $2
done

# SVM

PYTHONPATH=$PWD python3 dehb/utils/plot_regret.py --path dehb/examples/svm/results/ \
	--file dehb/examples/utils/methods.txt --n_runs $1 \
    --name $2"_svm" --title "SVM Surrogates" \
    --output_path dehb/examples/plots/ --benchmark svm --limit 1e6 --regret $2

# NAS-Bench-201

declare -a bench1=("cifar10-valid" "cifar100" "ImageNet16-120")
declare -a bench2=("cifar10" "cifar100" "imagenet")

benchmarks=${#bench1[@]}

for (( b=0; b<${benchmarks}; b++ ));
do
    PYTHONPATH=$PWD python3 dehb/utils/plot_regret.py --path dehb/examples/nas201/results/${bench1[$b]}/ \
        --file dehb/examples/utils/methods.txt --n_runs $1 \
        --name $2"_"${bench2[$b]} --title ${bench1[$b]} \
        --output_path dehb/examples/plots/ --benchmark 201 --limit 1e7 --regret $2
done

# BNN

declare -a bench1=("bostonhousing" "proteinstructure")
declare -a bench2=("Boston Housing" "Protein Structure")

benchmarks=${#bench1[@]}

for (( b=0; b<${benchmarks}; b++ ));
do
    PYTHONPATH=$PWD python3 dehb/utils/plot_regret.py --path dehb/examples/bnn/results/${bench1[$b]}/ \
        --file dehb/examples/utils/methods.txt --n_runs $1 \
        --name $2"_"${bench1[$b]} --title ${bench2[$b]} \
        --output_path dehb/examples/plots/ --benchmark bnn --limit 1e6 --regret $2
done


# Cartpole

declare -a bench1=("cartpole")
declare -a bench2=("cartpole")

benchmarks=${#bench1[@]}

for (( b=0; b<${benchmarks}; b++ ));
do
    PYTHONPATH=$PWD python3 dehb/utils/plot_regret.py --path dehb/examples/cartpole/results/ \
        --file dehb/examples/utils/methods.txt --n_runs $1 \
        --name $2"_"${bench2[$b]} --title ${bench1[$b]} \
        --output_path dehb/examples/plots/ --benchmark rl --limit 1e5 --regret $2
done

# CC18

#declare -a bench1=("189906")
#declare -a bench2=("Task ID 189906")

#benchmarks=${#bench1[@]}

#for (( b=0; b<${benchmarks}; b++ ));
#do
#    PYTHONPATH=$PWD python3 dehb/utils/plot_regret.py --path dehb/examples/cc18/results/${bench1[$b]}/ \
#        --file dehb/examples/utils/methods.txt --n_runs $1 \
#        --name $2"_"${bench1[$b]} --title ${bench2[$b]} \
#        --output_path dehb/examples/plots/ --benchmark cc18 --limit 1e5 --regret $2
#done




