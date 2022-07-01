#!/bin/sh
#0702 PPO test action_std->0.001(more deterministic), SAC 9 normalize(fix norm bug), 10 log -> normalize, TD3 14-17, PPO 3,4

python3 train.py -trial 9 -seed 0 -type SAC -log_norm 0
python3 train.py -trial 9 -seed 1 -type SAC -log_norm 0
python3 train.py -trial 9 -seed 2 -type SAC -log_norm 0
python3 train.py -trial 9 -seed 3 -type SAC -log_norm 0
python3 train.py -trial 9 -seed 4 -type SAC -log_norm 0
python3 plot_graph.py -trial 9 -type SAC
python3 test.py -trial 9 -seed 0 -type SAC -log_norm 0
python3 test.py -trial 9 -seed 1 -type SAC -log_norm 0
python3 test.py -trial 9 -seed 2 -type SAC -log_norm 0
python3 test.py -trial 9 -seed 3 -type SAC -log_norm 0
python3 test.py -trial 9 -seed 4 -type SAC -log_norm 0

python3 train.py -trial 10 -seed 0 -type SAC -log_norm 1
python3 train.py -trial 10 -seed 1 -type SAC -log_norm 1
python3 train.py -trial 10 -seed 2 -type SAC -log_norm 1
python3 train.py -trial 10 -seed 3 -type SAC -log_norm 1
python3 train.py -trial 10 -seed 4 -type SAC -log_norm 1
python3 plot_graph.py -trial 10 -type SAC
python3 test.py -trial 10 -seed 0 -type SAC -log_norm 1
python3 test.py -trial 10 -seed 1 -type SAC -log_norm 1
python3 test.py -trial 10 -seed 2 -type SAC -log_norm 1
python3 test.py -trial 10 -seed 3 -type SAC -log_norm 1
python3 test.py -trial 10 -seed 4 -type SAC -log_norm 1

python3 train.py -trial 14 -seed 0 -type TD3 -lr 3e-4 -log_norm 0
python3 train.py -trial 14 -seed 1 -type TD3 -lr 3e-4 -log_norm 0
python3 train.py -trial 14 -seed 2 -type TD3 -lr 3e-4 -log_norm 0
python3 train.py -trial 14 -seed 3 -type TD3 -lr 3e-4 -log_norm 0
python3 train.py -trial 14 -seed 4 -type TD3 -lr 3e-4 -log_norm 0
python3 plot_graph.py -trial 14 -type TD3
python3 test.py -trial 14 -seed 0 -type TD3 -lr 3e-4 -log_norm 0
python3 test.py -trial 14 -seed 1 -type TD3 -lr 3e-4 -log_norm 0
python3 test.py -trial 14 -seed 2 -type TD3 -lr 3e-4 -log_norm 0
python3 test.py -trial 14 -seed 3 -type TD3 -lr 3e-4 -log_norm 0
python3 test.py -trial 14 -seed 4 -type TD3 -lr 3e-4 -log_norm 0

python3 train.py -trial 15 -seed 0 -type TD3 -lr 3e-4 -log_norm 1
python3 train.py -trial 15 -seed 1 -type TD3 -lr 3e-4 -log_norm 1
python3 train.py -trial 15 -seed 2 -type TD3 -lr 3e-4 -log_norm 1
python3 train.py -trial 15 -seed 3 -type TD3 -lr 3e-4 -log_norm 1
python3 train.py -trial 15 -seed 4 -type TD3 -lr 3e-4 -log_norm 1
python3 plot_graph.py -trial 15 -type TD3
python3 test.py -trial 15 -seed 0 -type TD3 -lr 3e-4 -log_norm 1
python3 test.py -trial 15 -seed 1 -type TD3 -lr 3e-4 -log_norm 1
python3 test.py -trial 15 -seed 2 -type TD3 -lr 3e-4 -log_norm 1
python3 test.py -trial 15 -seed 3 -type TD3 -lr 3e-4 -log_norm 1
python3 test.py -trial 15 -seed 4 -type TD3 -lr 3e-4 -log_norm 1

python3 train.py -trial 16 -seed 0 -type TD3 -lr 5e-4 -log_norm 0
python3 train.py -trial 16 -seed 1 -type TD3 -lr 5e-4 -log_norm 0
python3 train.py -trial 16 -seed 2 -type TD3 -lr 5e-4 -log_norm 0
python3 train.py -trial 16 -seed 3 -type TD3 -lr 5e-4 -log_norm 0
python3 train.py -trial 16 -seed 4 -type TD3 -lr 5e-4 -log_norm 0
python3 plot_graph.py -trial 16 -type TD3
python3 test.py -trial 16 -seed 0 -type TD3 -lr 5e-4 -log_norm 0
python3 test.py -trial 16 -seed 1 -type TD3 -lr 5e-4 -log_norm 0
python3 test.py -trial 16 -seed 2 -type TD3 -lr 5e-4 -log_norm 0
python3 test.py -trial 16 -seed 3 -type TD3 -lr 5e-4 -log_norm 0
python3 test.py -trial 16 -seed 4 -type TD3 -lr 5e-4 -log_norm 0

python3 train.py -trial 17 -seed 0 -type TD3 -lr 5e-4 -log_norm 1
python3 train.py -trial 17 -seed 1 -type TD3 -lr 5e-4 -log_norm 1
python3 train.py -trial 17 -seed 2 -type TD3 -lr 5e-4 -log_norm 1
python3 train.py -trial 17 -seed 3 -type TD3 -lr 5e-4 -log_norm 1
python3 train.py -trial 17 -seed 4 -type TD3 -lr 5e-4 -log_norm 1
python3 plot_graph.py -trial 17 -type TD3
python3 test.py -trial 17 -seed 0 -type TD3 -lr 5e-4 -log_norm 1
python3 test.py -trial 17 -seed 1 -type TD3 -lr 5e-4 -log_norm 1
python3 test.py -trial 17 -seed 2 -type TD3 -lr 5e-4 -log_norm 1
python3 test.py -trial 17 -seed 3 -type TD3 -lr 5e-4 -log_norm 1
python3 test.py -trial 17 -seed 4 -type TD3 -lr 5e-4 -log_norm 1

python3 train.py -trial 3 -seed 0 -type PPO -log_norm 0
python3 train.py -trial 3 -seed 1 -type PPO -log_norm 0
python3 train.py -trial 3 -seed 2 -type PPO -log_norm 0
python3 train.py -trial 3 -seed 3 -type PPO -log_norm 0
python3 train.py -trial 3 -seed 4 -type PPO -log_norm 0
python3 plot_graph.py -trial 3 -type PPO
python3 test.py -trial 3 -seed 0 -type PPO -log_norm 0
python3 test.py -trial 3 -seed 1 -type PPO -log_norm 0
python3 test.py -trial 3 -seed 2 -type PPO -log_norm 0
python3 test.py -trial 3 -seed 3 -type PPO -log_norm 0
python3 test.py -trial 3 -seed 4 -type PPO -log_norm 0

python3 train.py -trial 4 -seed 0 -type PPO -log_norm 1
python3 train.py -trial 4 -seed 1 -type PPO -log_norm 1
python3 train.py -trial 4 -seed 2 -type PPO -log_norm 1
python3 train.py -trial 4 -seed 3 -type PPO -log_norm 1
python3 train.py -trial 4 -seed 4 -type PPO -log_norm 1
python3 plot_graph.py -trial 4 -type PPO
python3 test.py -trial 4 -seed 0 -type PPO -log_norm 1
python3 test.py -trial 4 -seed 1 -type PPO -log_norm 1
python3 test.py -trial 4 -seed 2 -type PPO -log_norm 1
python3 test.py -trial 4 -seed 3 -type PPO -log_norm 1
python3 test.py -trial 4 -seed 4 -type PPO -log_norm 1