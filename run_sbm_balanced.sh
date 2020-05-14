#!/bin/bash

#SBATCH --job-name=td1
#SBATCH --output=td1.out
#SBATCH --error=td1.err
#SBATCH --nodes=1
#SBATCH --partition=broadwl
#SBATCH --ntasks=1

module load cuda/10.0

python sbm_main.py \
--size 500,500,500,500,500 \
--niter 30 \
--trial 1 \
-p 0.3 \
-q 0.1 \
--xi 10 \
--repeat 20 \
--note balanced