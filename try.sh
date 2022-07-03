#!/bin/sh
# result and plot
# 0703 PPO 11, 12
# tune update timestep 1000, 4000

# python3 train.py -trial 16 -seed 0 -type SAC -env_dt 0.05
# python3 train.py -trial 16 -seed 1 -type SAC -env_dt 0.05
# python3 train.py -trial 16 -seed 2 -type SAC -env_dt 0.05
# python3 train.py -trial 16 -seed 3 -type SAC -env_dt 0.05
# python3 train.py -trial 16 -seed 4 -type SAC -env_dt 0.05
# python3 plot_graph.py -trial 16 -type SAC
# python3 test.py -trial 16 -seed 0 -type SAC -env_dt 0.05
# python3 test.py -trial 16 -seed 1 -type SAC -env_dt 0.05
# python3 test.py -trial 16 -seed 2 -type SAC -env_dt 0.05
# python3 test.py -trial 16 -seed 3 -type SAC -env_dt 0.05
# python3 test.py -trial 16 -seed 4 -type SAC -env_dt 0.05

# python3 train.py -trial 17 -seed 0 -type SAC -env_dt 0.05
# python3 train.py -trial 17 -seed 1 -type SAC -env_dt 0.05
# python3 train.py -trial 17 -seed 2 -type SAC -env_dt 0.05
# python3 train.py -trial 17 -seed 3 -type SAC -env_dt 0.05
# python3 train.py -trial 17 -seed 4 -type SAC -env_dt 0.05
# python3 plot_graph.py -trial 17 -type SAC
# python3 test.py -trial 17 -seed 0 -type SAC -env_dt 0.05
# python3 test.py -trial 17 -seed 1 -type SAC -env_dt 0.05
# python3 test.py -trial 17 -seed 2 -type SAC -env_dt 0.05
# python3 test.py -trial 17 -seed 3 -type SAC -env_dt 0.05
# python3 test.py -trial 17 -seed 4 -type SAC -env_dt 0.05

# python3 train.py -trial 24 -seed 0 -type TD3 -env_dt 0.05
# python3 train.py -trial 24 -seed 1 -type TD3 -env_dt 0.05
# python3 train.py -trial 24 -seed 2 -type TD3 -env_dt 0.05
# python3 train.py -trial 24 -seed 3 -type TD3 -env_dt 0.05
# python3 train.py -trial 24 -seed 4 -type TD3 -env_dt 0.05
# python3 plot_graph.py -trial 24 -type TD3
# python3 test.py -trial 24 -seed 0 -type TD3 -env_dt 0.05
# python3 test.py -trial 24 -seed 1 -type TD3 -env_dt 0.05
# python3 test.py -trial 24 -seed 2 -type TD3 -env_dt 0.05
# python3 test.py -trial 24 -seed 3 -type TD3 -env_dt 0.05
# python3 test.py -trial 24 -seed 4 -type TD3 -env_dt 0.05

# python3 train.py -trial 25 -seed 0 -type TD3 -env_dt 0.05
# python3 train.py -trial 25 -seed 1 -type TD3 -env_dt 0.05
# python3 train.py -trial 25 -seed 2 -type TD3 -env_dt 0.05
# python3 train.py -trial 25 -seed 3 -type TD3 -env_dt 0.05
# python3 train.py -trial 25 -seed 4 -type TD3 -env_dt 0.05
# python3 plot_graph.py -trial 25 -type TD3
# python3 test.py -trial 25 -seed 0 -type TD3 -env_dt 0.05
# python3 test.py -trial 25 -seed 1 -type TD3 -env_dt 0.05
# python3 test.py -trial 25 -seed 2 -type TD3 -env_dt 0.05
# python3 test.py -trial 25 -seed 3 -type TD3 -env_dt 0.05
# python3 test.py -trial 25 -seed 4 -type TD3 -env_dt 0.05

python3 train.py -trial 11 -seed 0 -type PPO -env_dt 0.05 -up_step 1000
python3 train.py -trial 11 -seed 1 -type PPO -env_dt 0.05 -up_step 1000
python3 train.py -trial 11 -seed 2 -type PPO -env_dt 0.05 -up_step 1000
python3 train.py -trial 11 -seed 3 -type PPO -env_dt 0.05 -up_step 1000
python3 train.py -trial 11 -seed 4 -type PPO -env_dt 0.05 -up_step 1000
python3 plot_graph.py -trial 11 -type PPO
python3 test.py -trial 11 -seed 0 -type PPO -env_dt 0.05
python3 test.py -trial 11 -seed 1 -type PPO -env_dt 0.05
python3 test.py -trial 11 -seed 2 -type PPO -env_dt 0.05
python3 test.py -trial 11 -seed 3 -type PPO -env_dt 0.05
python3 test.py -trial 11 -seed 4 -type PPO -env_dt 0.05

python3 train.py -trial 12 -seed 0 -type PPO -env_dt 0.05 -up_step 4000
python3 train.py -trial 12 -seed 1 -type PPO -env_dt 0.05 -up_step 4000
python3 train.py -trial 12 -seed 2 -type PPO -env_dt 0.05 -up_step 4000
python3 train.py -trial 12 -seed 3 -type PPO -env_dt 0.05 -up_step 4000
python3 train.py -trial 12 -seed 4 -type PPO -env_dt 0.05 -up_step 4000
python3 plot_graph.py -trial 12 -type PPO
python3 test.py -trial 12 -seed 0 -type PPO -env_dt 0.05
python3 test.py -trial 12 -seed 1 -type PPO -env_dt 0.05
python3 test.py -trial 12 -seed 2 -type PPO -env_dt 0.05
python3 test.py -trial 12 -seed 3 -type PPO -env_dt 0.05
python3 test.py -trial 12 -seed 4 -type PPO -env_dt 0.05