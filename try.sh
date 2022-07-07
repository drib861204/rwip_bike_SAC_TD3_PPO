#!/bin/sh
# SAC 22,23 not mirror(Pendulum_v4), env_dt 0.05,0.1(debugged)

python3 train.py -trial 22 -seed 0 -type SAC -env_dt 0.05
python3 train.py -trial 22 -seed 1 -type SAC -env_dt 0.05
python3 train.py -trial 22 -seed 2 -type SAC -env_dt 0.05
python3 train.py -trial 22 -seed 3 -type SAC -env_dt 0.05
python3 train.py -trial 22 -seed 4 -type SAC -env_dt 0.05
python3 plot_graph.py -trial 22 -type SAC
python3 test.py -trial 22 -seed 0 -type SAC -env_dt 0.05
python3 test.py -trial 22 -seed 1 -type SAC -env_dt 0.05
python3 test.py -trial 22 -seed 2 -type SAC -env_dt 0.05
python3 test.py -trial 22 -seed 3 -type SAC -env_dt 0.05
python3 test.py -trial 22 -seed 4 -type SAC -env_dt 0.05

python3 train.py -trial 23 -seed 0 -type SAC -env_dt 0.1
python3 train.py -trial 23 -seed 1 -type SAC -env_dt 0.1
python3 train.py -trial 23 -seed 2 -type SAC -env_dt 0.1
python3 train.py -trial 23 -seed 3 -type SAC -env_dt 0.1
python3 train.py -trial 23 -seed 4 -type SAC -env_dt 0.1
python3 plot_graph.py -trial 23 -type SAC
python3 test.py -trial 23 -seed 0 -type SAC -env_dt 0.1
python3 test.py -trial 23 -seed 1 -type SAC -env_dt 0.1
python3 test.py -trial 23 -seed 2 -type SAC -env_dt 0.1
python3 test.py -trial 23 -seed 3 -type SAC -env_dt 0.1
python3 test.py -trial 23 -seed 4 -type SAC -env_dt 0.1

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

#python3 train.py -trial 29 -seed 0 -type TD3 -env_dt 0.05 --start_timesteps 1000
#python3 train.py -trial 29 -seed 1 -type TD3 -env_dt 0.05 --start_timesteps 1000
#python3 train.py -trial 29 -seed 2 -type TD3 -env_dt 0.05 --start_timesteps 1000
#python3 train.py -trial 29 -seed 3 -type TD3 -env_dt 0.05 --start_timesteps 1000
#python3 train.py -trial 29 -seed 4 -type TD3 -env_dt 0.05 --start_timesteps 1000
#python3 plot_graph.py -trial 29 -type TD3
#python3 test.py -trial 29 -seed 0 -type TD3 -env_dt 0.05
#python3 test.py -trial 29 -seed 1 -type TD3 -env_dt 0.05
#python3 test.py -trial 29 -seed 2 -type TD3 -env_dt 0.05
#python3 test.py -trial 29 -seed 3 -type TD3 -env_dt 0.05
#python3 test.py -trial 29 -seed 4 -type TD3 -env_dt 0.05

#python3 train.py -trial 30 -seed 0 -type TD3 -env_dt 0.05 --start_timesteps 5000
#python3 train.py -trial 30 -seed 1 -type TD3 -env_dt 0.05 --start_timesteps 5000
#python3 train.py -trial 30 -seed 2 -type TD3 -env_dt 0.05 --start_timesteps 5000
#python3 train.py -trial 30 -seed 3 -type TD3 -env_dt 0.05 --start_timesteps 5000
#python3 train.py -trial 30 -seed 4 -type TD3 -env_dt 0.05 --start_timesteps 5000
#python3 plot_graph.py -trial 30 -type TD3
#python3 test.py -trial 30 -seed 0 -type TD3 -env_dt 0.05
#python3 test.py -trial 30 -seed 1 -type TD3 -env_dt 0.05
#python3 test.py -trial 30 -seed 2 -type TD3 -env_dt 0.05
#python3 test.py -trial 30 -seed 3 -type TD3 -env_dt 0.05
#python3 test.py -trial 30 -seed 4 -type TD3 -env_dt 0.05

#python3 train.py -trial 31 -seed 0 -type TD3 -env_dt 0.05 --start_timesteps 10000
#python3 train.py -trial 31 -seed 1 -type TD3 -env_dt 0.05 --start_timesteps 10000
#python3 train.py -trial 31 -seed 2 -type TD3 -env_dt 0.05 --start_timesteps 10000
#python3 train.py -trial 31 -seed 3 -type TD3 -env_dt 0.05 --start_timesteps 10000
#python3 train.py -trial 31 -seed 4 -type TD3 -env_dt 0.05 --start_timesteps 10000
#python3 plot_graph.py -trial 31 -type TD3
#python3 test.py -trial 31 -seed 0 -type TD3 -env_dt 0.05
#python3 test.py -trial 31 -seed 1 -type TD3 -env_dt 0.05
#python3 test.py -trial 31 -seed 2 -type TD3 -env_dt 0.05
#python3 test.py -trial 31 -seed 3 -type TD3 -env_dt 0.05
#python3 test.py -trial 31 -seed 4 -type TD3 -env_dt 0.05

#python3 train.py -trial 32 -seed 0 -type TD3 -env_dt 0.05 -stay_reward 0.1
#python3 train.py -trial 32 -seed 1 -type TD3 -env_dt 0.05 -stay_reward 0.1
#python3 train.py -trial 32 -seed 2 -type TD3 -env_dt 0.05 -stay_reward 0.1
#python3 train.py -trial 32 -seed 3 -type TD3 -env_dt 0.05 -stay_reward 0.1
#python3 train.py -trial 32 -seed 4 -type TD3 -env_dt 0.05 -stay_reward 0.1
#python3 plot_graph.py -trial 32 -type TD3
#python3 test.py -trial 32 -seed 0 -type TD3 -env_dt 0.05 -stay_reward 0.1
#python3 test.py -trial 32 -seed 1 -type TD3 -env_dt 0.05 -stay_reward 0.1
#python3 test.py -trial 32 -seed 2 -type TD3 -env_dt 0.05 -stay_reward 0.1
#python3 test.py -trial 32 -seed 3 -type TD3 -env_dt 0.05 -stay_reward 0.1
#python3 test.py -trial 32 -seed 4 -type TD3 -env_dt 0.05 -stay_reward 0.1

#python3 train.py -trial 33 -seed 0 -type TD3 -env_dt 0.05 -stay_reward 0.2
#python3 train.py -trial 33 -seed 1 -type TD3 -env_dt 0.05 -stay_reward 0.2
#python3 train.py -trial 33 -seed 2 -type TD3 -env_dt 0.05 -stay_reward 0.2
#python3 train.py -trial 33 -seed 3 -type TD3 -env_dt 0.05 -stay_reward 0.2
#python3 train.py -trial 33 -seed 4 -type TD3 -env_dt 0.05 -stay_reward 0.2
#python3 plot_graph.py -trial 33 -type TD3
#python3 test.py -trial 33 -seed 0 -type TD3 -env_dt 0.05 -stay_reward 0.2
#python3 test.py -trial 33 -seed 1 -type TD3 -env_dt 0.05 -stay_reward 0.2
#python3 test.py -trial 33 -seed 2 -type TD3 -env_dt 0.05 -stay_reward 0.2
#python3 test.py -trial 33 -seed 3 -type TD3 -env_dt 0.05 -stay_reward 0.2
#python3 test.py -trial 33 -seed 4 -type TD3 -env_dt 0.05 -stay_reward 0.2

#python3 train.py -trial 34 -seed 0 -type TD3 -env_dt 0.05 -stay_reward 0.3
#python3 train.py -trial 34 -seed 1 -type TD3 -env_dt 0.05 -stay_reward 0.3
#python3 train.py -trial 34 -seed 2 -type TD3 -env_dt 0.05 -stay_reward 0.3
#python3 train.py -trial 34 -seed 3 -type TD3 -env_dt 0.05 -stay_reward 0.3
#python3 train.py -trial 34 -seed 4 -type TD3 -env_dt 0.05 -stay_reward 0.3
#python3 plot_graph.py -trial 34 -type TD3
#python3 test.py -trial 34 -seed 0 -type TD3 -env_dt 0.05 -stay_reward 0.3
#python3 test.py -trial 34 -seed 1 -type TD3 -env_dt 0.05 -stay_reward 0.3
#python3 test.py -trial 34 -seed 2 -type TD3 -env_dt 0.05 -stay_reward 0.3
#python3 test.py -trial 34 -seed 3 -type TD3 -env_dt 0.05 -stay_reward 0.3
#python3 test.py -trial 34 -seed 4 -type TD3 -env_dt 0.05 -stay_reward 0.3

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
