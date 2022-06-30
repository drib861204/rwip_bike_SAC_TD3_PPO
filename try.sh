#!/bin/sh
#0630 SAC 4-7 tune w_q2dot 

python3 train.py -trial 4 -seed 0 -type SAC -w_q2dot 0.01
python3 train.py -trial 4 -seed 1 -type SAC -w_q2dot 0.01
python3 train.py -trial 4 -seed 2 -type SAC -w_q2dot 0.01
python3 train.py -trial 4 -seed 3 -type SAC -w_q2dot 0.01
python3 train.py -trial 4 -seed 4 -type SAC -w_q2dot 0.01
python3 plot_graph.py -trial 4 -type SAC
python3 test.py -trial 4 -seed 0 -type SAC -w_q2dot 0.01
python3 test.py -trial 4 -seed 1 -type SAC -w_q2dot 0.01
python3 test.py -trial 4 -seed 2 -type SAC -w_q2dot 0.01
python3 test.py -trial 4 -seed 3 -type SAC -w_q2dot 0.01
python3 test.py -trial 4 -seed 4 -type SAC -w_q2dot 0.01

python3 train.py -trial 5 -seed 0 -type SAC -w_q2dot 0.001
python3 train.py -trial 5 -seed 1 -type SAC -w_q2dot 0.001
python3 train.py -trial 5 -seed 2 -type SAC -w_q2dot 0.001
python3 train.py -trial 5 -seed 3 -type SAC -w_q2dot 0.001
python3 train.py -trial 5 -seed 4 -type SAC -w_q2dot 0.001
python3 plot_graph.py -trial 5 -type SAC
python3 test.py -trial 5 -seed 0 -type SAC -w_q2dot 0.001
python3 test.py -trial 5 -seed 1 -type SAC -w_q2dot 0.001
python3 test.py -trial 5 -seed 2 -type SAC -w_q2dot 0.001
python3 test.py -trial 5 -seed 3 -type SAC -w_q2dot 0.001
python3 test.py -trial 5 -seed 4 -type SAC -w_q2dot 0.001

python3 train.py -trial 6 -seed 0 -type SAC -w_q2dot 0.0001
python3 train.py -trial 6 -seed 1 -type SAC -w_q2dot 0.0001
python3 train.py -trial 6 -seed 2 -type SAC -w_q2dot 0.0001
python3 train.py -trial 6 -seed 3 -type SAC -w_q2dot 0.0001
python3 train.py -trial 6 -seed 4 -type SAC -w_q2dot 0.0001
python3 plot_graph.py -trial 6 -type SAC
python3 test.py -trial 6 -seed 0 -type SAC -w_q2dot 0.0001
python3 test.py -trial 6 -seed 1 -type SAC -w_q2dot 0.0001
python3 test.py -trial 6 -seed 2 -type SAC -w_q2dot 0.0001
python3 test.py -trial 6 -seed 3 -type SAC -w_q2dot 0.0001
python3 test.py -trial 6 -seed 4 -type SAC -w_q2dot 0.0001

python3 train.py -trial 7 -seed 0 -type SAC -w_q2dot 0.00001
python3 train.py -trial 7 -seed 1 -type SAC -w_q2dot 0.00001
python3 train.py -trial 7 -seed 2 -type SAC -w_q2dot 0.00001
python3 train.py -trial 7 -seed 3 -type SAC -w_q2dot 0.00001
python3 train.py -trial 7 -seed 4 -type SAC -w_q2dot 0.00001
python3 plot_graph.py -trial 7 -type SAC
python3 test.py -trial 7 -seed 0 -type SAC -w_q2dot 0.00001
python3 test.py -trial 7 -seed 1 -type SAC -w_q2dot 0.00001
python3 test.py -trial 7 -seed 2 -type SAC -w_q2dot 0.00001
python3 test.py -trial 7 -seed 3 -type SAC -w_q2dot 0.00001
python3 test.py -trial 7 -seed 4 -type SAC -w_q2dot 0.00001

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

#python3 train.py -trial 2 -seed 0 -type PPO
#python3 train.py -trial 2 -seed 1 -type PPO
#python3 train.py -trial 2 -seed 2 -type PPO
#python3 train.py -trial 2 -seed 3 -type PPO
#python3 train.py -trial 2 -seed 4 -type PPO
#python3 plot_graph.py -trial 2 -type PPO
#python3 test.py -trial 2 -seed 0 -type PPO
#python3 test.py -trial 2 -seed 1 -type PPO
#python3 test.py -trial 2 -seed 2 -type PPO
#python3 test.py -trial 2 -seed 3 -type PPO
#python3 test.py -trial 2 -seed 4 -type PPO
