#!/bin/sh
# result and plot
# 0703 SAC 13&14, TD3 22&23, PPO 7&8 (-to_last_frame 0&1)
# TD3 same lr as others(lra 0.0003, lrc 0.001)
# normalize: wrong but excellent version
# plot eval_reward
# SAC 15: timestep 0.05

python3 train.py -trial 13 -seed 0 -type SAC -to_last_frame 0
python3 train.py -trial 13 -seed 1 -type SAC -to_last_frame 0
python3 train.py -trial 13 -seed 2 -type SAC -to_last_frame 0
python3 train.py -trial 13 -seed 3 -type SAC -to_last_frame 0
python3 train.py -trial 13 -seed 4 -type SAC -to_last_frame 0
python3 plot_graph.py -trial 13 -type SAC
python3 test.py -trial 13 -seed 0 -type SAC
python3 test.py -trial 13 -seed 1 -type SAC
python3 test.py -trial 13 -seed 2 -type SAC
python3 test.py -trial 13 -seed 3 -type SAC
python3 test.py -trial 13 -seed 4 -type SAC

python3 train.py -trial 14 -seed 0 -type SAC -to_last_frame 1
python3 train.py -trial 14 -seed 1 -type SAC -to_last_frame 1
python3 train.py -trial 14 -seed 2 -type SAC -to_last_frame 1
python3 train.py -trial 14 -seed 3 -type SAC -to_last_frame 1
python3 train.py -trial 14 -seed 4 -type SAC -to_last_frame 1
python3 plot_graph.py -trial 14 -type SAC
python3 test.py -trial 14 -seed 0 -type SAC
python3 test.py -trial 14 -seed 1 -type SAC
python3 test.py -trial 14 -seed 2 -type SAC
python3 test.py -trial 14 -seed 3 -type SAC
python3 test.py -trial 14 -seed 4 -type SAC

python3 train.py -trial 15 -seed 0 -type SAC -to_last_frame 1 -env_dt 0.05
python3 train.py -trial 15 -seed 1 -type SAC -to_last_frame 1 -env_dt 0.05
python3 train.py -trial 15 -seed 2 -type SAC -to_last_frame 1 -env_dt 0.05
python3 train.py -trial 15 -seed 3 -type SAC -to_last_frame 1 -env_dt 0.05
python3 train.py -trial 15 -seed 4 -type SAC -to_last_frame 1 -env_dt 0.05
python3 plot_graph.py -trial 15 -type SAC
python3 test.py -trial 15 -seed 0 -type SAC -env_dt 0.05
python3 test.py -trial 15 -seed 1 -type SAC -env_dt 0.05
python3 test.py -trial 15 -seed 2 -type SAC -env_dt 0.05
python3 test.py -trial 15 -seed 3 -type SAC -env_dt 0.05
python3 test.py -trial 15 -seed 4 -type SAC -env_dt 0.05

python3 train.py -trial 22 -seed 0 -type TD3 -to_last_frame 0
python3 train.py -trial 22 -seed 1 -type TD3 -to_last_frame 0
python3 train.py -trial 22 -seed 2 -type TD3 -to_last_frame 0
python3 train.py -trial 22 -seed 3 -type TD3 -to_last_frame 0
python3 train.py -trial 22 -seed 4 -type TD3 -to_last_frame 0
python3 plot_graph.py -trial 22 -type TD3
python3 test.py -trial 22 -seed 0 -type TD3
python3 test.py -trial 22 -seed 1 -type TD3
python3 test.py -trial 22 -seed 2 -type TD3
python3 test.py -trial 22 -seed 3 -type TD3
python3 test.py -trial 22 -seed 4 -type TD3

python3 train.py -trial 23 -seed 0 -type TD3 -to_last_frame 1
python3 train.py -trial 23 -seed 1 -type TD3 -to_last_frame 1
python3 train.py -trial 23 -seed 2 -type TD3 -to_last_frame 1
python3 train.py -trial 23 -seed 3 -type TD3 -to_last_frame 1
python3 train.py -trial 23 -seed 4 -type TD3 -to_last_frame 1
python3 plot_graph.py -trial 23 -type TD3
python3 test.py -trial 23 -seed 0 -type TD3
python3 test.py -trial 23 -seed 1 -type TD3
python3 test.py -trial 23 -seed 2 -type TD3
python3 test.py -trial 23 -seed 3 -type TD3
python3 test.py -trial 23 -seed 4 -type TD3

python3 train.py -trial 7 -seed 0 -type PPO -to_last_frame 0
python3 train.py -trial 7 -seed 1 -type PPO -to_last_frame 0
python3 train.py -trial 7 -seed 2 -type PPO -to_last_frame 0
python3 train.py -trial 7 -seed 3 -type PPO -to_last_frame 0
python3 train.py -trial 7 -seed 4 -type PPO -to_last_frame 0
python3 plot_graph.py -trial 7 -type PPO
python3 test.py -trial 7 -seed 0 -type PPO
python3 test.py -trial 7 -seed 1 -type PPO
python3 test.py -trial 7 -seed 2 -type PPO
python3 test.py -trial 7 -seed 3 -type PPO
python3 test.py -trial 7 -seed 4 -type PPO

python3 train.py -trial 8 -seed 0 -type PPO -to_last_frame 1
python3 train.py -trial 8 -seed 1 -type PPO -to_last_frame 1
python3 train.py -trial 8 -seed 2 -type PPO -to_last_frame 1
python3 train.py -trial 8 -seed 3 -type PPO -to_last_frame 1
python3 train.py -trial 8 -seed 4 -type PPO -to_last_frame 1
python3 plot_graph.py -trial 8 -type PPO
python3 test.py -trial 8 -seed 0 -type PPO
python3 test.py -trial 8 -seed 1 -type PPO
python3 test.py -trial 8 -seed 2 -type PPO
python3 test.py -trial 8 -seed 3 -type PPO
python3 test.py -trial 8 -seed 4 -type PPO