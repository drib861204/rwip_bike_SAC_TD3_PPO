#!/bin/sh
# FIN: up_step 1000 kind of better than default 2000
# PPO 27-30, tune up_step

python3 train.py -trial 27 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 10
python3 train.py -trial 27 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 10
python3 train.py -trial 27 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 10
python3 train.py -trial 27 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 10
python3 train.py -trial 27 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 10
python3 plot_graph.py -trial 27 -type PPO
python3 test.py -trial 27 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 27 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 27 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 27 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 27 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001

python3 train.py -trial 28 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 100
python3 train.py -trial 28 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 100
python3 train.py -trial 28 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 100
python3 train.py -trial 28 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 100
python3 train.py -trial 28 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 100
python3 plot_graph.py -trial 28 -type PPO
python3 test.py -trial 28 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 28 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 28 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 28 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 28 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001

python3 train.py -trial 29 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 1000
python3 train.py -trial 29 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 1000
python3 train.py -trial 29 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 1000
python3 train.py -trial 29 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 1000
python3 train.py -trial 29 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 1000
python3 plot_graph.py -trial 29 -type PPO
python3 test.py -trial 29 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 29 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 29 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 29 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 29 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001

python3 train.py -trial 30 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 10000
python3 train.py -trial 30 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 10000
python3 train.py -trial 30 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 10000
python3 train.py -trial 30 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 10000
python3 train.py -trial 30 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 --up_step 10000
python3 plot_graph.py -trial 30 -type PPO
python3 test.py -trial 30 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 30 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 30 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 30 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 30 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001
