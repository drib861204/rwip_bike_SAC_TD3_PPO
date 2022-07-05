#!/bin/sh
# 0706 SAC 19(env_dt 0.2) & 20,21, TD3 26-28, PPO 13-15 env_dt 0.001,0.01,0.03

python3 train.py -trial 19 -seed 0 -type SAC -env_dt 0.2
python3 train.py -trial 19 -seed 1 -type SAC -env_dt 0.2
python3 train.py -trial 19 -seed 2 -type SAC -env_dt 0.2
python3 train.py -trial 19 -seed 3 -type SAC -env_dt 0.2
python3 train.py -trial 19 -seed 4 -type SAC -env_dt 0.2
python3 plot_graph.py -trial 19 -type SAC
python3 test.py -trial 19 -seed 0 -type SAC -env_dt 0.2
python3 test.py -trial 19 -seed 1 -type SAC -env_dt 0.2
python3 test.py -trial 19 -seed 2 -type SAC -env_dt 0.2
python3 test.py -trial 19 -seed 3 -type SAC -env_dt 0.2
python3 test.py -trial 19 -seed 4 -type SAC -env_dt 0.2

python3 train.py -trial 20 -seed 0 -type SAC -env_dt 0.01
python3 train.py -trial 20 -seed 1 -type SAC -env_dt 0.01
python3 train.py -trial 20 -seed 2 -type SAC -env_dt 0.01
python3 train.py -trial 20 -seed 3 -type SAC -env_dt 0.01
python3 train.py -trial 20 -seed 4 -type SAC -env_dt 0.01
python3 plot_graph.py -trial 20 -type SAC
python3 test.py -trial 20 -seed 0 -type SAC -env_dt 0.01
python3 test.py -trial 20 -seed 1 -type SAC -env_dt 0.01
python3 test.py -trial 20 -seed 2 -type SAC -env_dt 0.01
python3 test.py -trial 20 -seed 3 -type SAC -env_dt 0.01
python3 test.py -trial 20 -seed 4 -type SAC -env_dt 0.01

python3 train.py -trial 21 -seed 0 -type SAC -env_dt 0.03
python3 train.py -trial 21 -seed 1 -type SAC -env_dt 0.03
python3 train.py -trial 21 -seed 2 -type SAC -env_dt 0.03
python3 train.py -trial 21 -seed 3 -type SAC -env_dt 0.03
python3 train.py -trial 21 -seed 4 -type SAC -env_dt 0.03
python3 plot_graph.py -trial 21 -type SAC
python3 test.py -trial 21 -seed 0 -type SAC -env_dt 0.03
python3 test.py -trial 21 -seed 1 -type SAC -env_dt 0.03
python3 test.py -trial 21 -seed 2 -type SAC -env_dt 0.03
python3 test.py -trial 21 -seed 3 -type SAC -env_dt 0.03
python3 test.py -trial 21 -seed 4 -type SAC -env_dt 0.03

python3 train.py -trial 26 -seed 0 -type TD3 -env_dt 0.001
python3 train.py -trial 26 -seed 1 -type TD3 -env_dt 0.001
python3 train.py -trial 26 -seed 2 -type TD3 -env_dt 0.001
python3 train.py -trial 26 -seed 3 -type TD3 -env_dt 0.001
python3 train.py -trial 26 -seed 4 -type TD3 -env_dt 0.001
python3 plot_graph.py -trial 26 -type TD3
python3 test.py -trial 26 -seed 0 -type TD3 -env_dt 0.001
python3 test.py -trial 26 -seed 1 -type TD3 -env_dt 0.001
python3 test.py -trial 26 -seed 2 -type TD3 -env_dt 0.001
python3 test.py -trial 26 -seed 3 -type TD3 -env_dt 0.001
python3 test.py -trial 26 -seed 4 -type TD3 -env_dt 0.001

python3 train.py -trial 27 -seed 0 -type TD3 -env_dt 0.01
python3 train.py -trial 27 -seed 1 -type TD3 -env_dt 0.01
python3 train.py -trial 27 -seed 2 -type TD3 -env_dt 0.01
python3 train.py -trial 27 -seed 3 -type TD3 -env_dt 0.01
python3 train.py -trial 27 -seed 4 -type TD3 -env_dt 0.01
python3 plot_graph.py -trial 27 -type TD3
python3 test.py -trial 27 -seed 0 -type TD3 -env_dt 0.01
python3 test.py -trial 27 -seed 1 -type TD3 -env_dt 0.01
python3 test.py -trial 27 -seed 2 -type TD3 -env_dt 0.01
python3 test.py -trial 27 -seed 3 -type TD3 -env_dt 0.01
python3 test.py -trial 27 -seed 4 -type TD3 -env_dt 0.01

python3 train.py -trial 28 -seed 0 -type TD3 -env_dt 0.03
python3 train.py -trial 28 -seed 1 -type TD3 -env_dt 0.03
python3 train.py -trial 28 -seed 2 -type TD3 -env_dt 0.03
python3 train.py -trial 28 -seed 3 -type TD3 -env_dt 0.03
python3 train.py -trial 28 -seed 4 -type TD3 -env_dt 0.03
python3 plot_graph.py -trial 28 -type TD3
python3 test.py -trial 28 -seed 0 -type TD3 -env_dt 0.03
python3 test.py -trial 28 -seed 1 -type TD3 -env_dt 0.03
python3 test.py -trial 28 -seed 2 -type TD3 -env_dt 0.03
python3 test.py -trial 28 -seed 3 -type TD3 -env_dt 0.03
python3 test.py -trial 28 -seed 4 -type TD3 -env_dt 0.03

python3 train.py -trial 13 -seed 0 -type PPO -env_dt 0.001
python3 train.py -trial 13 -seed 1 -type PPO -env_dt 0.001
python3 train.py -trial 13 -seed 2 -type PPO -env_dt 0.001
python3 train.py -trial 13 -seed 3 -type PPO -env_dt 0.001
python3 train.py -trial 13 -seed 4 -type PPO -env_dt 0.001
python3 plot_graph.py -trial 13 -type PPO
python3 test.py -trial 13 -seed 0 -type PPO -env_dt 0.001
python3 test.py -trial 13 -seed 1 -type PPO -env_dt 0.001
python3 test.py -trial 13 -seed 2 -type PPO -env_dt 0.001
python3 test.py -trial 13 -seed 3 -type PPO -env_dt 0.001
python3 test.py -trial 13 -seed 4 -type PPO -env_dt 0.001

python3 train.py -trial 14 -seed 0 -type PPO -env_dt 0.01
python3 train.py -trial 14 -seed 1 -type PPO -env_dt 0.01
python3 train.py -trial 14 -seed 2 -type PPO -env_dt 0.01
python3 train.py -trial 14 -seed 3 -type PPO -env_dt 0.01
python3 train.py -trial 14 -seed 4 -type PPO -env_dt 0.01
python3 plot_graph.py -trial 14 -type PPO
python3 test.py -trial 14 -seed 0 -type PPO -env_dt 0.01
python3 test.py -trial 14 -seed 1 -type PPO -env_dt 0.01
python3 test.py -trial 14 -seed 2 -type PPO -env_dt 0.01
python3 test.py -trial 14 -seed 3 -type PPO -env_dt 0.01
python3 test.py -trial 14 -seed 4 -type PPO -env_dt 0.01

python3 train.py -trial 15 -seed 0 -type PPO -env_dt 0.03
python3 train.py -trial 15 -seed 1 -type PPO -env_dt 0.03
python3 train.py -trial 15 -seed 2 -type PPO -env_dt 0.03
python3 train.py -trial 15 -seed 3 -type PPO -env_dt 0.03
python3 train.py -trial 15 -seed 4 -type PPO -env_dt 0.03
python3 plot_graph.py -trial 15 -type PPO
python3 test.py -trial 15 -seed 0 -type PPO -env_dt 0.03
python3 test.py -trial 15 -seed 1 -type PPO -env_dt 0.03
python3 test.py -trial 15 -seed 2 -type PPO -env_dt 0.03
python3 test.py -trial 15 -seed 3 -type PPO -env_dt 0.03
python3 test.py -trial 15 -seed 4 -type PPO -env_dt 0.03