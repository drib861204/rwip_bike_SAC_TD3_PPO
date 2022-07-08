#!/bin/sh
# SAC 30,31 q1+q1dot+q2dot, w_q2dot=0.001, if done: costs+=(rep_max-rep) (Pendulum v4)

python3 train.py -trial 30 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 0
python3 train.py -trial 30 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 0
python3 train.py -trial 30 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 0
python3 train.py -trial 30 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 0
python3 train.py -trial 30 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 0
python3 plot_graph.py -trial 30 -type SAC
python3 test.py -trial 30 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 0
python3 test.py -trial 30 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 0
python3 test.py -trial 30 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 0
python3 test.py -trial 30 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 0
python3 test.py -trial 30 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 0

python3 train.py -trial 31 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 1
python3 train.py -trial 31 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 1
python3 train.py -trial 31 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 1
python3 train.py -trial 31 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 1
python3 train.py -trial 31 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 1
python3 plot_graph.py -trial 31 -type SAC
python3 test.py -trial 31 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 1
python3 test.py -trial 31 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 1
python3 test.py -trial 31 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 1
python3 test.py -trial 31 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 1
python3 test.py -trial 31 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -grad_done_cost 1

#python3 train.py -trial 25 -seed 0 -type SAC -w_q2dot 0.01
#python3 train.py -trial 25 -seed 1 -type SAC -w_q2dot 0.01
#python3 train.py -trial 25 -seed 2 -type SAC -w_q2dot 0.01
#python3 train.py -trial 25 -seed 3 -type SAC -w_q2dot 0.01
#python3 train.py -trial 25 -seed 4 -type SAC -w_q2dot 0.01
#python3 plot_graph.py -trial 25 -type SAC
#python3 test.py -trial 25 -seed 0 -type SAC -w_q2dot 0.01
#python3 test.py -trial 25 -seed 1 -type SAC -w_q2dot 0.01
#python3 test.py -trial 25 -seed 2 -type SAC -w_q2dot 0.01
#python3 test.py -trial 25 -seed 3 -type SAC -w_q2dot 0.01
#python3 test.py -trial 25 -seed 4 -type SAC -w_q2dot 0.01

#python3 train.py -trial 26 -seed 0 -type SAC -w_q2dot 0.001
#python3 train.py -trial 26 -seed 1 -type SAC -w_q2dot 0.001
#python3 train.py -trial 26 -seed 2 -type SAC -w_q2dot 0.001
#python3 train.py -trial 26 -seed 3 -type SAC -w_q2dot 0.001
#python3 train.py -trial 26 -seed 4 -type SAC -w_q2dot 0.001
#python3 plot_graph.py -trial 26 -type SAC
#python3 test.py -trial 26 -seed 0 -type SAC -w_q2dot 0.001
#python3 test.py -trial 26 -seed 1 -type SAC -w_q2dot 0.001
#python3 test.py -trial 26 -seed 2 -type SAC -w_q2dot 0.001
#python3 test.py -trial 26 -seed 3 -type SAC -w_q2dot 0.001
#python3 test.py -trial 26 -seed 4 -type SAC -w_q2dot 0.001

#python3 train.py -trial 27 -seed 0 -type SAC -w_q2dot 0.0001
#python3 train.py -trial 27 -seed 1 -type SAC -w_q2dot 0.0001
#python3 train.py -trial 27 -seed 2 -type SAC -w_q2dot 0.0001
#python3 train.py -trial 27 -seed 3 -type SAC -w_q2dot 0.0001
#python3 train.py -trial 27 -seed 4 -type SAC -w_q2dot 0.0001
#python3 plot_graph.py -trial 27 -type SAC
#python3 test.py -trial 27 -seed 0 -type SAC -w_q2dot 0.0001
#python3 test.py -trial 27 -seed 1 -type SAC -w_q2dot 0.0001
#python3 test.py -trial 27 -seed 2 -type SAC -w_q2dot 0.0001
#python3 test.py -trial 27 -seed 3 -type SAC -w_q2dot 0.0001
#python3 test.py -trial 27 -seed 4 -type SAC -w_q2dot 0.0001

#python3 train.py -trial 28 -seed 0 -type SAC -w_q2dot 0.00001
#python3 train.py -trial 28 -seed 1 -type SAC -w_q2dot 0.00001
#python3 train.py -trial 28 -seed 2 -type SAC -w_q2dot 0.00001
#python3 train.py -trial 28 -seed 3 -type SAC -w_q2dot 0.00001
#python3 train.py -trial 28 -seed 4 -type SAC -w_q2dot 0.00001
#python3 plot_graph.py -trial 28 -type SAC
#python3 test.py -trial 28 -seed 0 -type SAC -w_q2dot 0.00001
#python3 test.py -trial 28 -seed 1 -type SAC -w_q2dot 0.00001
#python3 test.py -trial 28 -seed 2 -type SAC -w_q2dot 0.00001
#python3 test.py -trial 28 -seed 3 -type SAC -w_q2dot 0.00001
#python3 test.py -trial 28 -seed 4 -type SAC -w_q2dot 0.00001

#python3 train.py -trial 29 -seed 0 -type SAC -norm_reward 1
#python3 train.py -trial 29 -seed 1 -type SAC -norm_reward 1
#python3 train.py -trial 29 -seed 2 -type SAC -norm_reward 1
#python3 train.py -trial 29 -seed 3 -type SAC -norm_reward 1
#python3 train.py -trial 29 -seed 4 -type SAC -norm_reward 1
#python3 plot_graph.py -trial 29 -type SAC
#python3 test.py -trial 29 -seed 0 -type SAC -norm_reward 1
#python3 test.py -trial 29 -seed 1 -type SAC -norm_reward 1
#python3 test.py -trial 29 -seed 2 -type SAC -norm_reward 1
#python3 test.py -trial 29 -seed 3 -type SAC -norm_reward 1
#python3 test.py -trial 29 -seed 4 -type SAC -norm_reward 1

#python3 train.py -trial 21 -seed 0 -type SAC -env_dt 0.03
#python3 train.py -trial 21 -seed 1 -type SAC -env_dt 0.03
#python3 train.py -trial 21 -seed 2 -type SAC -env_dt 0.03
#python3 train.py -trial 21 -seed 3 -type SAC -env_dt 0.03
#python3 train.py -trial 21 -seed 4 -type SAC -env_dt 0.03
#python3 plot_graph.py -trial 21 -type SAC
#python3 test.py -trial 21 -seed 0 -type SAC -env_dt 0.03
#python3 test.py -trial 21 -seed 1 -type SAC -env_dt 0.03
#python3 test.py -trial 21 -seed 2 -type SAC -env_dt 0.03
#python3 test.py -trial 21 -seed 3 -type SAC -env_dt 0.03
#python3 test.py -trial 21 -seed 4 -type SAC -env_dt 0.03

#python3 train.py -trial 29 -seed 0 -type TD3 --start_timesteps 1000
#python3 train.py -trial 29 -seed 1 -type TD3 --start_timesteps 1000
#python3 train.py -trial 29 -seed 2 -type TD3 --start_timesteps 1000
#python3 train.py -trial 29 -seed 3 -type TD3 --start_timesteps 1000
#python3 train.py -trial 29 -seed 4 -type TD3 --start_timesteps 1000
#python3 plot_graph.py -trial 29 -type TD3
#python3 test.py -trial 29 -seed 0 -type TD3
#python3 test.py -trial 29 -seed 1 -type TD3
#python3 test.py -trial 29 -seed 2 -type TD3
#python3 test.py -trial 29 -seed 3 -type TD3
#python3 test.py -trial 29 -seed 4 -type TD3

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

#python3 train.py -trial 31 -seed 0 -type TD3 --start_timesteps 10000
#python3 train.py -trial 31 -seed 1 -type TD3 --start_timesteps 10000
#python3 train.py -trial 31 -seed 2 -type TD3 --start_timesteps 10000
#python3 train.py -trial 31 -seed 3 -type TD3 --start_timesteps 10000
#python3 train.py -trial 31 -seed 4 -type TD3 --start_timesteps 10000
#python3 plot_graph.py -trial 31 -type TD3
#python3 test.py -trial 31 -seed 0 -type TD3
#python3 test.py -trial 31 -seed 1 -type TD3
#python3 test.py -trial 31 -seed 2 -type TD3
#python3 test.py -trial 31 -seed 3 -type TD3
#python3 test.py -trial 31 -seed 4 -type TD3

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

#python3 train.py -trial 13 -seed 0 -type PPO -env_dt 0.001
#python3 train.py -trial 13 -seed 1 -type PPO -env_dt 0.001
#python3 train.py -trial 13 -seed 2 -type PPO -env_dt 0.001
#python3 train.py -trial 13 -seed 3 -type PPO -env_dt 0.001
#python3 train.py -trial 13 -seed 4 -type PPO -env_dt 0.001
#python3 plot_graph.py -trial 13 -type PPO
#python3 test.py -trial 13 -seed 0 -type PPO -env_dt 0.001
#python3 test.py -trial 13 -seed 1 -type PPO -env_dt 0.001
#python3 test.py -trial 13 -seed 2 -type PPO -env_dt 0.001
#python3 test.py -trial 13 -seed 3 -type PPO -env_dt 0.001
#python3 test.py -trial 13 -seed 4 -type PPO -env_dt 0.001

#python3 train.py -trial 14 -seed 0 -type PPO -env_dt 0.01
#python3 train.py -trial 14 -seed 1 -type PPO -env_dt 0.01
#python3 train.py -trial 14 -seed 2 -type PPO -env_dt 0.01
#python3 train.py -trial 14 -seed 3 -type PPO -env_dt 0.01
#python3 train.py -trial 14 -seed 4 -type PPO -env_dt 0.01
#python3 plot_graph.py -trial 14 -type PPO
#python3 test.py -trial 14 -seed 0 -type PPO -env_dt 0.01
#python3 test.py -trial 14 -seed 1 -type PPO -env_dt 0.01
#python3 test.py -trial 14 -seed 2 -type PPO -env_dt 0.01
#python3 test.py -trial 14 -seed 3 -type PPO -env_dt 0.01
#python3 test.py -trial 14 -seed 4 -type PPO -env_dt 0.01

#python3 train.py -trial 15 -seed 0 -type PPO -env_dt 0.03
#python3 train.py -trial 15 -seed 1 -type PPO -env_dt 0.03
#python3 train.py -trial 15 -seed 2 -type PPO -env_dt 0.03
#python3 train.py -trial 15 -seed 3 -type PPO -env_dt 0.03
#python3 train.py -trial 15 -seed 4 -type PPO -env_dt 0.03
#python3 plot_graph.py -trial 15 -type PPO
#python3 test.py -trial 15 -seed 0 -type PPO -env_dt 0.03
#python3 test.py -trial 15 -seed 1 -type PPO -env_dt 0.03
#python3 test.py -trial 15 -seed 2 -type PPO -env_dt 0.03
#python3 test.py -trial 15 -seed 3 -type PPO -env_dt 0.03
#python3 test.py -trial 15 -seed 4 -type PPO -env_dt 0.03
