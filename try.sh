#!/bin/sh
#0629 TD3 6-7 result and plot

#python3 train.py -trial 2 -seed 0 -type SAC
#python3 train.py -trial 2 -seed 1 -type SAC
#python3 train.py -trial 2 -seed 2 -type SAC
#python3 train.py -trial 2 -seed 3 -type SAC
#python3 train.py -trial 2 -seed 4 -type SAC
#python3 plot_graph.py -trial 2 -type SAC
#python3 test.py -trial 2 -seed 0 -type SAC
#python3 test.py -trial 2 -seed 1 -type SAC
#python3 test.py -trial 2 -seed 2 -type SAC
#python3 test.py -trial 2 -seed 3 -type SAC
#python3 test.py -trial 2 -seed 4 -type SAC

python3 train.py -trial 6 -seed 0 -type TD3 -done_cost 1000
python3 train.py -trial 6 -seed 1 -type TD3 -done_cost 1000
python3 train.py -trial 6 -seed 2 -type TD3 -done_cost 1000
python3 train.py -trial 6 -seed 3 -type TD3 -done_cost 1000
python3 train.py -trial 6 -seed 4 -type TD3 -done_cost 1000
python3 plot_graph.py -trial 6 -type TD3
python3 test.py -trial 6 -seed 0 -type TD3 -done_cost 1000
python3 test.py -trial 6 -seed 1 -type TD3 -done_cost 1000
python3 test.py -trial 6 -seed 2 -type TD3 -done_cost 1000
python3 test.py -trial 6 -seed 3 -type TD3 -done_cost 1000
python3 test.py -trial 6 -seed 4 -type TD3 -done_cost 1000

python3 train.py -trial 7 -seed 0 -type TD3 -lr 3e-4 -done_cost 1000
python3 train.py -trial 7 -seed 1 -type TD3 -lr 3e-4 -done_cost 1000
python3 train.py -trial 7 -seed 2 -type TD3 -lr 3e-4 -done_cost 1000
python3 train.py -trial 7 -seed 3 -type TD3 -lr 3e-4 -done_cost 1000
python3 train.py -trial 7 -seed 4 -type TD3 -lr 3e-4 -done_cost 1000
python3 plot_graph.py -trial 7 -type TD3
python3 test.py -trial 7 -seed 0 -type TD3 -lr 3e-4 -done_cost 1000
python3 test.py -trial 7 -seed 1 -type TD3 -lr 3e-4 -done_cost 1000
python3 test.py -trial 7 -seed 2 -type TD3 -lr 3e-4 -done_cost 1000
python3 test.py -trial 7 -seed 3 -type TD3 -lr 3e-4 -done_cost 1000
python3 test.py -trial 7 -seed 4 -type TD3 -lr 3e-4 -done_cost 1000

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

#python3 train.py -trial 1 -seed 0 -type PPO
#python3 train.py -trial 1 -seed 1 -type PPO
#python3 train.py -trial 1 -seed 2 -type PPO
#python3 train.py -trial 1 -seed 3 -type PPO
#python3 train.py -trial 1 -seed 4 -type PPO
#python3 plot_graph.py -trial 1 -type PPO
#python3 test.py -trial 1 -seed 0 -type PPO
#python3 test.py -trial 1 -seed 1 -type PPO
#python3 test.py -trial 1 -seed 2 -type PPO
#python3 test.py -trial 1 -seed 3 -type PPO
#python3 test.py -trial 1 -seed 4 -type PPO
