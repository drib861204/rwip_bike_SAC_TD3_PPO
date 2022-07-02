#!/bin/sh
#0702 SAC 11,12, TD3 18-21, PPO 5,6 result and plot

python3 train.py -trial 11 -seed 0 -type SAC -log_norm 0
python3 train.py -trial 11 -seed 1 -type SAC -log_norm 0
python3 train.py -trial 11 -seed 2 -type SAC -log_norm 0
python3 train.py -trial 11 -seed 3 -type SAC -log_norm 0
python3 train.py -trial 11 -seed 4 -type SAC -log_norm 0
python3 plot_graph.py -trial 11 -type SAC
python3 test.py -trial 11 -seed 0 -type SAC -log_norm 0
python3 test.py -trial 11 -seed 1 -type SAC -log_norm 0
python3 test.py -trial 11 -seed 2 -type SAC -log_norm 0
python3 test.py -trial 11 -seed 3 -type SAC -log_norm 0
python3 test.py -trial 11 -seed 4 -type SAC -log_norm 0

python3 train.py -trial 12 -seed 0 -type SAC -log_norm 1
python3 train.py -trial 12 -seed 1 -type SAC -log_norm 1
python3 train.py -trial 12 -seed 2 -type SAC -log_norm 1
python3 train.py -trial 12 -seed 3 -type SAC -log_norm 1
python3 train.py -trial 12 -seed 4 -type SAC -log_norm 1
python3 plot_graph.py -trial 12 -type SAC
python3 test.py -trial 12 -seed 0 -type SAC -log_norm 1
python3 test.py -trial 12 -seed 1 -type SAC -log_norm 1
python3 test.py -trial 12 -seed 2 -type SAC -log_norm 1
python3 test.py -trial 12 -seed 3 -type SAC -log_norm 1
python3 test.py -trial 12 -seed 4 -type SAC -log_norm 1

python3 train.py -trial 18 -seed 0 -type TD3 -lr 3e-4 -log_norm 0
python3 train.py -trial 18 -seed 1 -type TD3 -lr 3e-4 -log_norm 0
python3 train.py -trial 18 -seed 2 -type TD3 -lr 3e-4 -log_norm 0
python3 train.py -trial 18 -seed 3 -type TD3 -lr 3e-4 -log_norm 0
python3 train.py -trial 18 -seed 4 -type TD3 -lr 3e-4 -log_norm 0
python3 plot_graph.py -trial 18 -type TD3
python3 test.py -trial 18 -seed 0 -type TD3 -lr 3e-4 -log_norm 0
python3 test.py -trial 18 -seed 1 -type TD3 -lr 3e-4 -log_norm 0
python3 test.py -trial 18 -seed 2 -type TD3 -lr 3e-4 -log_norm 0
python3 test.py -trial 18 -seed 3 -type TD3 -lr 3e-4 -log_norm 0
python3 test.py -trial 18 -seed 4 -type TD3 -lr 3e-4 -log_norm 0

python3 train.py -trial 19 -seed 0 -type TD3 -lr 3e-4 -log_norm 1
python3 train.py -trial 19 -seed 1 -type TD3 -lr 3e-4 -log_norm 1
python3 train.py -trial 19 -seed 2 -type TD3 -lr 3e-4 -log_norm 1
python3 train.py -trial 19 -seed 3 -type TD3 -lr 3e-4 -log_norm 1
python3 train.py -trial 19 -seed 4 -type TD3 -lr 3e-4 -log_norm 1
python3 plot_graph.py -trial 19 -type TD3
python3 test.py -trial 19 -seed 0 -type TD3 -lr 3e-4 -log_norm 1
python3 test.py -trial 19 -seed 1 -type TD3 -lr 3e-4 -log_norm 1
python3 test.py -trial 19 -seed 2 -type TD3 -lr 3e-4 -log_norm 1
python3 test.py -trial 19 -seed 3 -type TD3 -lr 3e-4 -log_norm 1
python3 test.py -trial 19 -seed 4 -type TD3 -lr 3e-4 -log_norm 1

python3 train.py -trial 20 -seed 0 -type TD3 -lr 5e-4 -log_norm 0
python3 train.py -trial 20 -seed 1 -type TD3 -lr 5e-4 -log_norm 0
python3 train.py -trial 20 -seed 2 -type TD3 -lr 5e-4 -log_norm 0
python3 train.py -trial 20 -seed 3 -type TD3 -lr 5e-4 -log_norm 0
python3 train.py -trial 20 -seed 4 -type TD3 -lr 5e-4 -log_norm 0
python3 plot_graph.py -trial 20 -type TD3
python3 test.py -trial 20 -seed 0 -type TD3 -lr 5e-4 -log_norm 0
python3 test.py -trial 20 -seed 1 -type TD3 -lr 5e-4 -log_norm 0
python3 test.py -trial 20 -seed 2 -type TD3 -lr 5e-4 -log_norm 0
python3 test.py -trial 20 -seed 3 -type TD3 -lr 5e-4 -log_norm 0
python3 test.py -trial 20 -seed 4 -type TD3 -lr 5e-4 -log_norm 0

python3 train.py -trial 21 -seed 0 -type TD3 -lr 5e-4 -log_norm 1
python3 train.py -trial 21 -seed 1 -type TD3 -lr 5e-4 -log_norm 1
python3 train.py -trial 21 -seed 2 -type TD3 -lr 5e-4 -log_norm 1
python3 train.py -trial 21 -seed 3 -type TD3 -lr 5e-4 -log_norm 1
python3 train.py -trial 21 -seed 4 -type TD3 -lr 5e-4 -log_norm 1
python3 plot_graph.py -trial 21 -type TD3
python3 test.py -trial 21 -seed 0 -type TD3 -lr 5e-4 -log_norm 1
python3 test.py -trial 21 -seed 1 -type TD3 -lr 5e-4 -log_norm 1
python3 test.py -trial 21 -seed 2 -type TD3 -lr 5e-4 -log_norm 1
python3 test.py -trial 21 -seed 3 -type TD3 -lr 5e-4 -log_norm 1
python3 test.py -trial 21 -seed 4 -type TD3 -lr 5e-4 -log_norm 1

python3 train.py -trial 5 -seed 0 -type PPO -log_norm 0
python3 train.py -trial 5 -seed 1 -type PPO -log_norm 0
python3 train.py -trial 5 -seed 2 -type PPO -log_norm 0
python3 train.py -trial 5 -seed 3 -type PPO -log_norm 0
python3 train.py -trial 5 -seed 4 -type PPO -log_norm 0
python3 plot_graph.py -trial 5 -type PPO
python3 test.py -trial 5 -seed 0 -type PPO -log_norm 0
python3 test.py -trial 5 -seed 1 -type PPO -log_norm 0
python3 test.py -trial 5 -seed 2 -type PPO -log_norm 0
python3 test.py -trial 5 -seed 3 -type PPO -log_norm 0
python3 test.py -trial 5 -seed 4 -type PPO -log_norm 0

python3 train.py -trial 6 -seed 0 -type PPO -log_norm 1
python3 train.py -trial 6 -seed 1 -type PPO -log_norm 1
python3 train.py -trial 6 -seed 2 -type PPO -log_norm 1
python3 train.py -trial 6 -seed 3 -type PPO -log_norm 1
python3 train.py -trial 6 -seed 4 -type PPO -log_norm 1
python3 plot_graph.py -trial 6 -type PPO
python3 test.py -trial 6 -seed 0 -type PPO -log_norm 1
python3 test.py -trial 6 -seed 1 -type PPO -log_norm 1
python3 test.py -trial 6 -seed 2 -type PPO -log_norm 1
python3 test.py -trial 6 -seed 3 -type PPO -log_norm 1
python3 test.py -trial 6 -seed 4 -type PPO -log_norm 1
