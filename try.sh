#!/bin/sh
# FIN 
# PPO 24-26, tune K_epochs

# python3 train.py -trial 37 -seed 0 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 200
# python3 train.py -trial 37 -seed 1 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 200
# python3 train.py -trial 37 -seed 2 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 200
# python3 train.py -trial 37 -seed 3 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 200
# python3 train.py -trial 37 -seed 4 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 200
# python3 plot_graph.py -trial 37 -type TD3
# python3 test.py -trial 37 -seed 0 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 200
# python3 test.py -trial 37 -seed 1 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 200
# python3 test.py -trial 37 -seed 2 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 200
# python3 test.py -trial 37 -seed 3 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 200
# python3 test.py -trial 37 -seed 4 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 200

# python3 train.py -trial 38 -seed 0 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 500
# python3 train.py -trial 38 -seed 1 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 500
# python3 train.py -trial 38 -seed 2 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 500
# python3 train.py -trial 38 -seed 3 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 500
# python3 train.py -trial 38 -seed 4 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 500
# python3 plot_graph.py -trial 38 -type TD3
# python3 test.py -trial 38 -seed 0 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 500
# python3 test.py -trial 38 -seed 1 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 500
# python3 test.py -trial 38 -seed 2 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 500
# python3 test.py -trial 38 -seed 3 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 500
# python3 test.py -trial 38 -seed 4 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 500

# python3 train.py -trial 39 -seed 0 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 1000
# python3 train.py -trial 39 -seed 1 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 1000
# python3 train.py -trial 39 -seed 2 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 1000
# python3 train.py -trial 39 -seed 3 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 1000
# python3 train.py -trial 39 -seed 4 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 1000
# python3 plot_graph.py -trial 39 -type TD3
# python3 test.py -trial 39 -seed 0 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 1000
# python3 test.py -trial 39 -seed 1 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 1000
# python3 test.py -trial 39 -seed 2 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 1000
# python3 test.py -trial 39 -seed 3 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 1000
# python3 test.py -trial 39 -seed 4 -type TD3 -reward_function 1 -w_q2dot 0.001 --start_timesteps 1000

python3 train.py -trial 24 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 10
python3 train.py -trial 24 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 10
python3 train.py -trial 24 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 10
python3 train.py -trial 24 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 10
python3 train.py -trial 24 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 10
python3 plot_graph.py -trial 24 -type PPO
python3 test.py -trial 24 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 24 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 24 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 24 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 24 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001

python3 train.py -trial 25 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 40
python3 train.py -trial 25 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 40
python3 train.py -trial 25 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 40
python3 train.py -trial 25 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 40
python3 train.py -trial 25 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 40
python3 plot_graph.py -trial 25 -type PPO
python3 test.py -trial 25 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 25 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 25 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 25 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 25 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001

python3 train.py -trial 26 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 120
python3 train.py -trial 26 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 120
python3 train.py -trial 26 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 120
python3 train.py -trial 26 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 120
python3 train.py -trial 26 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 120
python3 plot_graph.py -trial 26 -type PPO
python3 test.py -trial 26 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 26 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 26 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 26 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 26 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001
