#!/bin/sh
#0701 SAC 8 result and plot

python3 train.py -trial 8 -seed 0 -type SAC
python3 train.py -trial 8 -seed 1 -type SAC
python3 train.py -trial 8 -seed 2 -type SAC
python3 train.py -trial 8 -seed 3 -type SAC
python3 train.py -trial 8 -seed 4 -type SAC
python3 plot_graph.py -trial 8 -type SAC
python3 test.py -trial 8 -seed 0 -type SAC
python3 test.py -trial 8 -seed 1 -type SAC
python3 test.py -trial 8 -seed 2 -type SAC
python3 test.py -trial 8 -seed 3 -type SAC
python3 test.py -trial 8 -seed 4 -type SAC

#python3 train.py -trial 11 -seed 0 -type TD3 -lr 1e-4
#python3 train.py -trial 11 -seed 1 -type TD3 -lr 1e-4
#python3 train.py -trial 11 -seed 2 -type TD3 -lr 1e-4
#python3 train.py -trial 11 -seed 3 -type TD3 -lr 1e-4
#python3 train.py -trial 11 -seed 4 -type TD3 -lr 1e-4
#python3 plot_graph.py -trial 11 -type TD3
#python3 test.py -trial 11 -seed 0 -type TD3 -lr 1e-4
#python3 test.py -trial 11 -seed 1 -type TD3 -lr 1e-4
#python3 test.py -trial 11 -seed 2 -type TD3 -lr 1e-4
#python3 test.py -trial 11 -seed 3 -type TD3 -lr 1e-4
#python3 test.py -trial 11 -seed 4 -type TD3 -lr 1e-4

#python3 train.py -trial 12 -seed 0 -type TD3 -lr 3e-4
#python3 train.py -trial 12 -seed 1 -type TD3 -lr 3e-4
#python3 train.py -trial 12 -seed 2 -type TD3 -lr 3e-4
#python3 train.py -trial 12 -seed 3 -type TD3 -lr 3e-4
#python3 train.py -trial 12 -seed 4 -type TD3 -lr 3e-4
#python3 plot_graph.py -trial 12 -type TD3
#python3 test.py -trial 12 -seed 0 -type TD3 -lr 3e-4
#python3 test.py -trial 12 -seed 1 -type TD3 -lr 3e-4
#python3 test.py -trial 12 -seed 2 -type TD3 -lr 3e-4
#python3 test.py -trial 12 -seed 3 -type TD3 -lr 3e-4
#python3 test.py -trial 12 -seed 4 -type TD3 -lr 3e-4

#python3 train.py -trial 13 -seed 0 -type TD3 -lr 7e-4
#python3 train.py -trial 13 -seed 1 -type TD3 -lr 7e-4
#python3 train.py -trial 13 -seed 2 -type TD3 -lr 7e-4
#python3 train.py -trial 13 -seed 3 -type TD3 -lr 7e-4
#python3 train.py -trial 13 -seed 4 -type TD3 -lr 7e-4
#python3 plot_graph.py -trial 13 -type TD3
#python3 test.py -trial 13 -seed 0 -type TD3 -lr 7e-4
#python3 test.py -trial 13 -seed 1 -type TD3 -lr 7e-4
#python3 test.py -trial 13 -seed 2 -type TD3 -lr 7e-4
#python3 test.py -trial 13 -seed 3 -type TD3 -lr 7e-4
#python3 test.py -trial 13 -seed 4 -type TD3 -lr 7e-4

#python3 train.py -trial 4 -seed 0 -type TD3 -w_q1 1000
#python3 train.py -trial 4 -seed 1 -type TD3 -w_q1 1000
#python3 train.py -trial 4 -seed 2 -type TD3 -w_q1 1000
#python3 train.py -trial 4 -seed 3 -type TD3 -w_q1 1000
#python3 train.py -trial 4 -seed 4 -type TD3 -w_q1 1000
#python3 plot_graph.py -trial 4 -type TD3
#python3 test.py -trial 4 -seed 0 -type TD3 -w_q1 1000
#python3 test.py -trial 4 -seed 1 -type TD3 -w_q1 1000
#python3 test.py -trial 4 -seed 2 -type TD3 -w_q1 1000
#python3 test.py -trial 4 -seed 3 -type TD3 -w_q1 1000
#python3 test.py -trial 4 -seed 4 -type TD3 -w_q1 1000

#python3 train.py -trial 5 -seed 0 -type TD3 -lr 3e-4 -w_q1 1000
#python3 train.py -trial 5 -seed 1 -type TD3 -lr 3e-4 -w_q1 1000
#python3 train.py -trial 5 -seed 2 -type TD3 -lr 3e-4 -w_q1 1000
#python3 train.py -trial 5 -seed 3 -type TD3 -lr 3e-4 -w_q1 1000
#python3 train.py -trial 5 -seed 4 -type TD3 -lr 3e-4 -w_q1 1000
#python3 plot_graph.py -trial 5 -type TD3
#python3 test.py -trial 5 -seed 0 -type TD3 -lr 3e-4 -w_q1 1000
#python3 test.py -trial 5 -seed 1 -type TD3 -lr 3e-4 -w_q1 1000
#python3 test.py -trial 5 -seed 2 -type TD3 -lr 3e-4 -w_q1 1000
#python3 test.py -trial 5 -seed 3 -type TD3 -lr 3e-4 -w_q1 1000
#python3 test.py -trial 5 -seed 4 -type TD3 -lr 3e-4 -w_q1 1000

#python3 train.py -trial 3 -seed 0 -type PPO
#python3 train.py -trial 3 -seed 1 -type PPO
#python3 train.py -trial 3 -seed 2 -type PPO
#python3 train.py -trial 3 -seed 3 -type PPO
#python3 train.py -trial 3 -seed 4 -type PPO
#python3 plot_graph.py -trial 3 -type PPO
#python3 test.py -trial 3 -seed 0 -type PPO
#python3 test.py -trial 3 -seed 1 -type PPO
#python3 test.py -trial 3 -seed 2 -type PPO
#python3 test.py -trial 3 -seed 3 -type PPO
#python3 test.py -trial 3 -seed 4 -type PPO
