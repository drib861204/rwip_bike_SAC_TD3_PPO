#!/bin/sh
#0629 0-1 result and plot, TD3 might have action error

python3 train.py -trial 0 -seed 0 -type SAC
python3 train.py -trial 0 -seed 1 -type SAC
python3 train.py -trial 0 -seed 2 -type SAC
python3 train.py -trial 0 -seed 3 -type SAC
python3 train.py -trial 0 -seed 4 -type SAC
python3 plot_graph.py -trial 0 -type SAC
python3 test.py -trial 0 -seed 0 -type SAC
python3 test.py -trial 0 -seed 1 -type SAC
python3 test.py -trial 0 -seed 2 -type SAC
python3 test.py -trial 0 -seed 3 -type SAC
python3 test.py -trial 0 -seed 4 -type SAC

python3 train.py -trial 0 -seed 0 -type TD3
python3 train.py -trial 0 -seed 1 -type TD3
python3 train.py -trial 0 -seed 2 -type TD3
python3 train.py -trial 0 -seed 3 -type TD3
python3 train.py -trial 0 -seed 4 -type TD3
python3 plot_graph.py -trial 0 -type TD3
python3 test.py -trial 0 -seed 0 -type TD3
python3 test.py -trial 0 -seed 1 -type TD3
python3 test.py -trial 0 -seed 2 -type TD3
python3 test.py -trial 0 -seed 3 -type TD3
python3 test.py -trial 0 -seed 4 -type TD3

python3 train.py -trial 0 -seed 0 -type PPO
python3 train.py -trial 0 -seed 1 -type PPO
python3 train.py -trial 0 -seed 2 -type PPO
python3 train.py -trial 0 -seed 3 -type PPO
python3 train.py -trial 0 -seed 4 -type PPO
python3 plot_graph.py -trial 0 -type PPO
python3 test.py -trial 0 -seed 0 -type PPO
python3 test.py -trial 0 -seed 1 -type PPO
python3 test.py -trial 0 -seed 2 -type PPO
python3 test.py -trial 0 -seed 3 -type PPO
python3 test.py -trial 0 -seed 4 -type PPO

python3 train.py -trial 1 -seed 0 -type SAC -lr_a 2e-3
python3 train.py -trial 1 -seed 1 -type SAC -lr_a 2e-3
python3 train.py -trial 1 -seed 2 -type SAC -lr_a 2e-3
python3 train.py -trial 1 -seed 3 -type SAC -lr_a 2e-3
python3 train.py -trial 1 -seed 4 -type SAC -lr_a 2e-3
python3 plot_graph.py -trial 1 -type SAC
python3 test.py -trial 1 -seed 0 -type SAC -lr_a 2e-3
python3 test.py -trial 1 -seed 1 -type SAC -lr_a 2e-3
python3 test.py -trial 1 -seed 2 -type SAC -lr_a 2e-3
python3 test.py -trial 1 -seed 3 -type SAC -lr_a 2e-3
python3 test.py -trial 1 -seed 4 -type SAC -lr_a 2e-3
