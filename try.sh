#!/bin/sh
# SAC 32-44 final_v1 tune reward_function 0,1,2,4

python3 train.py -trial 32 -seed 0 -type SAC -reward_function 0
python3 train.py -trial 32 -seed 1 -type SAC -reward_function 0
python3 train.py -trial 32 -seed 2 -type SAC -reward_function 0
python3 train.py -trial 32 -seed 3 -type SAC -reward_function 0
python3 train.py -trial 32 -seed 4 -type SAC -reward_function 0
python3 plot_graph.py -trial 32 -type SAC
python3 test.py -trial 32 -seed 0 -type SAC -reward_function 0
python3 test.py -trial 32 -seed 1 -type SAC -reward_function 0
python3 test.py -trial 32 -seed 2 -type SAC -reward_function 0
python3 test.py -trial 32 -seed 3 -type SAC -reward_function 0
python3 test.py -trial 32 -seed 4 -type SAC -reward_function 0

python3 train.py -trial 33 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.01
python3 train.py -trial 33 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.01
python3 train.py -trial 33 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.01
python3 train.py -trial 33 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.01
python3 train.py -trial 33 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.01
python3 plot_graph.py -trial 33 -type SAC
python3 test.py -trial 33 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.01
python3 test.py -trial 33 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.01
python3 test.py -trial 33 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.01
python3 test.py -trial 33 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.01
python3 test.py -trial 33 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.01

python3 train.py -trial 34 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001
python3 train.py -trial 34 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001
python3 train.py -trial 34 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001
python3 train.py -trial 34 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001
python3 train.py -trial 34 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001
python3 plot_graph.py -trial 34 -type SAC
python3 test.py -trial 34 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 34 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 34 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 34 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001
python3 test.py -trial 34 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001

python3 train.py -trial 35 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.0001
python3 train.py -trial 35 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.0001
python3 train.py -trial 35 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.0001
python3 train.py -trial 35 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.0001
python3 train.py -trial 35 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.0001
python3 plot_graph.py -trial 35 -type SAC
python3 test.py -trial 35 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.0001
python3 test.py -trial 35 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.0001
python3 test.py -trial 35 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.0001
python3 test.py -trial 35 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.0001
python3 test.py -trial 35 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.0001

python3 train.py -trial 36 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.00001
python3 train.py -trial 36 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.00001
python3 train.py -trial 36 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.00001
python3 train.py -trial 36 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.00001
python3 train.py -trial 36 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.00001
python3 plot_graph.py -trial 36 -type SAC
python3 test.py -trial 36 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.00001
python3 test.py -trial 36 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.00001
python3 test.py -trial 36 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.00001
python3 test.py -trial 36 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.00001
python3 test.py -trial 36 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.00001

python3 train.py -trial 37 -seed 0 -type SAC -reward_function 2 -w_tau 0.01
python3 train.py -trial 37 -seed 1 -type SAC -reward_function 2 -w_tau 0.01
python3 train.py -trial 37 -seed 2 -type SAC -reward_function 2 -w_tau 0.01
python3 train.py -trial 37 -seed 3 -type SAC -reward_function 2 -w_tau 0.01
python3 train.py -trial 37 -seed 4 -type SAC -reward_function 2 -w_tau 0.01
python3 plot_graph.py -trial 37 -type SAC
python3 test.py -trial 37 -seed 0 -type SAC -reward_function 2 -w_tau 0.01
python3 test.py -trial 37 -seed 1 -type SAC -reward_function 2 -w_tau 0.01
python3 test.py -trial 37 -seed 2 -type SAC -reward_function 2 -w_tau 0.01
python3 test.py -trial 37 -seed 3 -type SAC -reward_function 2 -w_tau 0.01
python3 test.py -trial 37 -seed 4 -type SAC -reward_function 2 -w_tau 0.01

python3 train.py -trial 38 -seed 0 -type SAC -reward_function 2 -w_tau 0.001
python3 train.py -trial 38 -seed 1 -type SAC -reward_function 2 -w_tau 0.001
python3 train.py -trial 38 -seed 2 -type SAC -reward_function 2 -w_tau 0.001
python3 train.py -trial 38 -seed 3 -type SAC -reward_function 2 -w_tau 0.001
python3 train.py -trial 38 -seed 4 -type SAC -reward_function 2 -w_tau 0.001
python3 plot_graph.py -trial 38 -type SAC
python3 test.py -trial 38 -seed 0 -type SAC -reward_function 2 -w_tau 0.001
python3 test.py -trial 38 -seed 1 -type SAC -reward_function 2 -w_tau 0.001
python3 test.py -trial 38 -seed 2 -type SAC -reward_function 2 -w_tau 0.001
python3 test.py -trial 38 -seed 3 -type SAC -reward_function 2 -w_tau 0.001
python3 test.py -trial 38 -seed 4 -type SAC -reward_function 2 -w_tau 0.001

python3 train.py -trial 39 -seed 0 -type SAC -reward_function 2 -w_tau 0.0001
python3 train.py -trial 39 -seed 1 -type SAC -reward_function 2 -w_tau 0.0001
python3 train.py -trial 39 -seed 2 -type SAC -reward_function 2 -w_tau 0.0001
python3 train.py -trial 39 -seed 3 -type SAC -reward_function 2 -w_tau 0.0001
python3 train.py -trial 39 -seed 4 -type SAC -reward_function 2 -w_tau 0.0001
python3 plot_graph.py -trial 39 -type SAC
python3 test.py -trial 39 -seed 0 -type SAC -reward_function 2 -w_tau 0.0001
python3 test.py -trial 39 -seed 1 -type SAC -reward_function 2 -w_tau 0.0001
python3 test.py -trial 39 -seed 2 -type SAC -reward_function 2 -w_tau 0.0001
python3 test.py -trial 39 -seed 3 -type SAC -reward_function 2 -w_tau 0.0001
python3 test.py -trial 39 -seed 4 -type SAC -reward_function 2 -w_tau 0.0001

python3 train.py -trial 40 -seed 0 -type SAC -reward_function 2 -w_tau 0.00001
python3 train.py -trial 40 -seed 1 -type SAC -reward_function 2 -w_tau 0.00001
python3 train.py -trial 40 -seed 2 -type SAC -reward_function 2 -w_tau 0.00001
python3 train.py -trial 40 -seed 3 -type SAC -reward_function 2 -w_tau 0.00001
python3 train.py -trial 40 -seed 4 -type SAC -reward_function 2 -w_tau 0.00001
python3 plot_graph.py -trial 40 -type SAC
python3 test.py -trial 40 -seed 0 -type SAC -reward_function 2 -w_tau 0.00001
python3 test.py -trial 40 -seed 1 -type SAC -reward_function 2 -w_tau 0.00001
python3 test.py -trial 40 -seed 2 -type SAC -reward_function 2 -w_tau 0.00001
python3 test.py -trial 40 -seed 3 -type SAC -reward_function 2 -w_tau 0.00001
python3 test.py -trial 40 -seed 4 -type SAC -reward_function 2 -w_tau 0.00001

python3 train.py -trial 41 -seed 0 -type SAC -reward_function 4 -w_dtau 0.01
python3 train.py -trial 41 -seed 1 -type SAC -reward_function 4 -w_dtau 0.01
python3 train.py -trial 41 -seed 2 -type SAC -reward_function 4 -w_dtau 0.01
python3 train.py -trial 41 -seed 3 -type SAC -reward_function 4 -w_dtau 0.01
python3 train.py -trial 41 -seed 4 -type SAC -reward_function 4 -w_dtau 0.01
python3 plot_graph.py -trial 41 -type SAC
python3 test.py -trial 41 -seed 0 -type SAC -reward_function 4 -w_dtau 0.01
python3 test.py -trial 41 -seed 1 -type SAC -reward_function 4 -w_dtau 0.01
python3 test.py -trial 41 -seed 2 -type SAC -reward_function 4 -w_dtau 0.01
python3 test.py -trial 41 -seed 3 -type SAC -reward_function 4 -w_dtau 0.01
python3 test.py -trial 41 -seed 4 -type SAC -reward_function 4 -w_dtau 0.01

python3 train.py -trial 42 -seed 0 -type SAC -reward_function 4 -w_dtau 0.001
python3 train.py -trial 42 -seed 1 -type SAC -reward_function 4 -w_dtau 0.001
python3 train.py -trial 42 -seed 2 -type SAC -reward_function 4 -w_dtau 0.001
python3 train.py -trial 42 -seed 3 -type SAC -reward_function 4 -w_dtau 0.001
python3 train.py -trial 42 -seed 4 -type SAC -reward_function 4 -w_dtau 0.001
python3 plot_graph.py -trial 42 -type SAC
python3 test.py -trial 42 -seed 0 -type SAC -reward_function 4 -w_dtau 0.001
python3 test.py -trial 42 -seed 1 -type SAC -reward_function 4 -w_dtau 0.001
python3 test.py -trial 42 -seed 2 -type SAC -reward_function 4 -w_dtau 0.001
python3 test.py -trial 42 -seed 3 -type SAC -reward_function 4 -w_dtau 0.001
python3 test.py -trial 42 -seed 4 -type SAC -reward_function 4 -w_dtau 0.001

python3 train.py -trial 43 -seed 0 -type SAC -reward_function 4 -w_dtau 0.0001
python3 train.py -trial 43 -seed 1 -type SAC -reward_function 4 -w_dtau 0.0001
python3 train.py -trial 43 -seed 2 -type SAC -reward_function 4 -w_dtau 0.0001
python3 train.py -trial 43 -seed 3 -type SAC -reward_function 4 -w_dtau 0.0001
python3 train.py -trial 43 -seed 4 -type SAC -reward_function 4 -w_dtau 0.0001
python3 plot_graph.py -trial 43 -type SAC
python3 test.py -trial 43 -seed 0 -type SAC -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 43 -seed 1 -type SAC -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 43 -seed 2 -type SAC -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 43 -seed 3 -type SAC -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 43 -seed 4 -type SAC -reward_function 4 -w_dtau 0.0001

python3 train.py -trial 44 -seed 0 -type SAC -reward_function 4 -w_dtau 0.00001
python3 train.py -trial 44 -seed 1 -type SAC -reward_function 4 -w_dtau 0.00001
python3 train.py -trial 44 -seed 2 -type SAC -reward_function 4 -w_dtau 0.00001
python3 train.py -trial 44 -seed 3 -type SAC -reward_function 4 -w_dtau 0.00001
python3 train.py -trial 44 -seed 4 -type SAC -reward_function 4 -w_dtau 0.00001
python3 plot_graph.py -trial 44 -type SAC
python3 test.py -trial 44 -seed 0 -type SAC -reward_function 4 -w_dtau 0.00001
python3 test.py -trial 44 -seed 1 -type SAC -reward_function 4 -w_dtau 0.00001
python3 test.py -trial 44 -seed 2 -type SAC -reward_function 4 -w_dtau 0.00001
python3 test.py -trial 44 -seed 3 -type SAC -reward_function 4 -w_dtau 0.00001
python3 test.py -trial 44 -seed 4 -type SAC -reward_function 4 -w_dtau 0.00001

#python3 train.py -trial 39 -seed 0 -type TD3 --start_timesteps 1000
#python3 train.py -trial 39 -seed 1 -type TD3 --start_timesteps 1000
#python3 train.py -trial 39 -seed 2 -type TD3 --start_timesteps 1000
#python3 train.py -trial 39 -seed 3 -type TD3 --start_timesteps 1000
#python3 train.py -trial 39 -seed 4 -type TD3 --start_timesteps 1000
#python3 plot_graph.py -trial 39 -type TD3
#python3 test.py -trial 39 -seed 0 -type TD3
#python3 test.py -trial 39 -seed 1 -type TD3
#python3 test.py -trial 39 -seed 2 -type TD3
#python3 test.py -trial 39 -seed 3 -type TD3
#python3 test.py -trial 39 -seed 4 -type TD3

#python3 train.py -trial 30 -seed 0 -type TD3 --start_timesteps 5000
#python3 train.py -trial 30 -seed 1 -type TD3 --start_timesteps 5000
#python3 train.py -trial 30 -seed 2 -type TD3 --start_timesteps 5000
#python3 train.py -trial 30 -seed 3 -type TD3 --start_timesteps 5000
#python3 train.py -trial 30 -seed 4 -type TD3 --start_timesteps 5000
#python3 plot_graph.py -trial 30 -type TD3
#python3 test.py -trial 30 -seed 0 -type TD3
#python3 test.py -trial 30 -seed 1 -type TD3
#python3 test.py -trial 30 -seed 2 -type TD3
#python3 test.py -trial 30 -seed 3 -type TD3
#python3 test.py -trial 30 -seed 4 -type TD3

#python3 train.py -trial 34 -seed 0 -type TD3 --start_timesteps 10000
#python3 train.py -trial 34 -seed 1 -type TD3 --start_timesteps 10000
#python3 train.py -trial 34 -seed 2 -type TD3 --start_timesteps 10000
#python3 train.py -trial 34 -seed 3 -type TD3 --start_timesteps 10000
#python3 train.py -trial 34 -seed 4 -type TD3 --start_timesteps 10000
#python3 plot_graph.py -trial 34 -type TD3
#python3 test.py -trial 34 -seed 0 -type TD3
#python3 test.py -trial 34 -seed 1 -type TD3
#python3 test.py -trial 34 -seed 2 -type TD3
#python3 test.py -trial 34 -seed 3 -type TD3
#python3 test.py -trial 34 -seed 4 -type TD3

#python3 train.py -trial 32 -seed 0 -type TD3 -stay_reward 0.1
#python3 train.py -trial 32 -seed 1 -type TD3 -stay_reward 0.1
#python3 train.py -trial 32 -seed 2 -type TD3 -stay_reward 0.1
#python3 train.py -trial 32 -seed 3 -type TD3 -stay_reward 0.1
#python3 train.py -trial 32 -seed 4 -type TD3 -stay_reward 0.1
#python3 plot_graph.py -trial 32 -type TD3
#python3 test.py -trial 32 -seed 0 -type TD3 -stay_reward 0.1
#python3 test.py -trial 32 -seed 1 -type TD3 -stay_reward 0.1
#python3 test.py -trial 32 -seed 2 -type TD3 -stay_reward 0.1
#python3 test.py -trial 32 -seed 3 -type TD3 -stay_reward 0.1
#python3 test.py -trial 32 -seed 4 -type TD3 -stay_reward 0.1

#python3 train.py -trial 33 -seed 0 -type TD3 -stay_reward 0.2
#python3 train.py -trial 33 -seed 1 -type TD3 -stay_reward 0.2
#python3 train.py -trial 33 -seed 2 -type TD3 -stay_reward 0.2
#python3 train.py -trial 33 -seed 3 -type TD3 -stay_reward 0.2
#python3 train.py -trial 33 -seed 4 -type TD3 -stay_reward 0.2
#python3 plot_graph.py -trial 33 -type TD3
#python3 test.py -trial 33 -seed 0 -type TD3 -stay_reward 0.2
#python3 test.py -trial 33 -seed 1 -type TD3 -stay_reward 0.2
#python3 test.py -trial 33 -seed 2 -type TD3 -stay_reward 0.2
#python3 test.py -trial 33 -seed 3 -type TD3 -stay_reward 0.2
#python3 test.py -trial 33 -seed 4 -type TD3 -stay_reward 0.2

#python3 train.py -trial 34 -seed 0 -type TD3 -stay_reward 0.3
#python3 train.py -trial 34 -seed 1 -type TD3 -stay_reward 0.3
#python3 train.py -trial 34 -seed 2 -type TD3 -stay_reward 0.3
#python3 train.py -trial 34 -seed 3 -type TD3 -stay_reward 0.3
#python3 train.py -trial 34 -seed 4 -type TD3 -stay_reward 0.3
#python3 plot_graph.py -trial 34 -type TD3
#python3 test.py -trial 34 -seed 0 -type TD3 -stay_reward 0.3
#python3 test.py -trial 34 -seed 1 -type TD3 -stay_reward 0.3
#python3 test.py -trial 34 -seed 2 -type TD3 -stay_reward 0.3
#python3 test.py -trial 34 -seed 3 -type TD3 -stay_reward 0.3
#python3 test.py -trial 34 -seed 4 -type TD3 -stay_reward 0.3

#python3 train.py -trial 40 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05 -frames 100000
#python3 train.py -trial 40 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05 -frames 100000
#python3 train.py -trial 40 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05 -frames 100000
#python3 train.py -trial 40 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05 -frames 100000
#python3 train.py -trial 40 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05 -frames 100000
#python3 plot_graph.py -trial 40 -type PPO
#python3 test.py -trial 40 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05
#python3 test.py -trial 40 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05
#python3 test.py -trial 40 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05
#python3 test.py -trial 40 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05
#python3 test.py -trial 40 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05

#python3 train.py -trial 17 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05 -frames 100000
#python3 train.py -trial 17 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05 -frames 100000
#python3 train.py -trial 17 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05 -frames 100000
#python3 train.py -trial 17 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05 -frames 100000
#python3 train.py -trial 17 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05 -frames 100000
#python3 plot_graph.py -trial 17 -type PPO
#python3 test.py -trial 17 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05
#python3 test.py -trial 17 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05
#python3 test.py -trial 17 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05
#python3 test.py -trial 17 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05
#python3 test.py -trial 17 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 -env_dt 0.05

#python3 train.py -trial 15 -seed 0 -type PPO -reward_function 2 -w_tau 0.00001
#python3 train.py -trial 15 -seed 1 -type PPO -reward_function 2 -w_tau 0.00001
#python3 train.py -trial 15 -seed 2 -type PPO -reward_function 2 -w_tau 0.00001
#python3 train.py -trial 15 -seed 3 -type PPO -reward_function 2 -w_tau 0.00001
#python3 train.py -trial 15 -seed 4 -type PPO -reward_function 2 -w_tau 0.00001
#python3 plot_graph.py -trial 15 -type PPO
#python3 test.py -trial 15 -seed 0 -type PPO -reward_function 2 -w_tau 0.00001
#python3 test.py -trial 15 -seed 1 -type PPO -reward_function 2 -w_tau 0.00001
#python3 test.py -trial 15 -seed 2 -type PPO -reward_function 2 -w_tau 0.00001
#python3 test.py -trial 15 -seed 3 -type PPO -reward_function 2 -w_tau 0.00001
#python3 test.py -trial 15 -seed 4 -type PPO -reward_function 2 -w_tau 0.00001
