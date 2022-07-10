#!/bin/sh
# PPO 23, q1,q1dot,q2dot, w_q2dot 0.001, cancel action_std update

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

python3 train.py -trial 23 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
python3 train.py -trial 23 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
python3 train.py -trial 23 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
python3 train.py -trial 23 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
python3 train.py -trial 23 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001
python3 plot_graph.py -trial 23 -type PPO
python3 test.py -trial 23 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 23 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 23 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 23 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 23 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001
