#!/bin/bash

#SBATCH --job-name=td1
#SBATCH --output=td1.out
#SBATCH --error=td1.err
#SBATCH --nodes=1
#SBATCH --partition=broadwl
#SBATCH --ntasks=1

module load cuda/10.0

python sbm_main.py \
--size 200,400,600,800 \
--niter 30 \
--trial 1 \
--xi 0.4 \
--repeat 30 \
--note unbalanced