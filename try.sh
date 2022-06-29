#!/bin/sh
#0629 PPO 1, SAC2, TD3 2 result and plot

python3 train.py -trial 2 -seed 0 -type SAC
python3 train.py -trial 2 -seed 1 -type SAC
python3 train.py -trial 2 -seed 2 -type SAC
python3 train.py -trial 2 -seed 3 -type SAC
python3 train.py -trial 2 -seed 4 -type SAC
python3 plot_graph.py -trial 2 -type SAC
python3 test.py -trial 2 -seed 0 -type SAC
python3 test.py -trial 2 -seed 1 -type SAC
python3 test.py -trial 2 -seed 2 -type SAC
python3 test.py -trial 2 -seed 3 -type SAC
python3 test.py -trial 2 -seed 4 -type SAC

python3 train.py -trial 2 -seed 0 -type TD3
python3 train.py -trial 2 -seed 1 -type TD3
python3 train.py -trial 2 -seed 2 -type TD3
python3 train.py -trial 2 -seed 3 -type TD3
python3 train.py -trial 2 -seed 4 -type TD3
python3 plot_graph.py -trial 2 -type TD3
python3 test.py -trial 2 -seed 0 -type TD3
python3 test.py -trial 2 -seed 1 -type TD3
python3 test.py -trial 2 -seed 2 -type TD3
python3 test.py -trial 2 -seed 3 -type TD3
python3 test.py -trial 2 -seed 4 -type TD3

python3 train.py -trial 1 -seed 0 -type PPO
python3 train.py -trial 1 -seed 1 -type PPO
python3 train.py -trial 1 -seed 2 -type PPO
python3 train.py -trial 1 -seed 3 -type PPO
python3 train.py -trial 1 -seed 4 -type PPO
python3 plot_graph.py -trial 1 -type PPO
python3 test.py -trial 1 -seed 0 -type PPO
python3 test.py -trial 1 -seed 1 -type PPO
python3 test.py -trial 1 -seed 2 -type PPO
python3 test.py -trial 1 -seed 3 -type PPO
python3 test.py -trial 1 -seed 4 -type PPO
