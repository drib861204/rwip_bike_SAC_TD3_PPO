#!/bin/sh
# 0705 SAC env_dt 0.15, 0.2

python3 train.py -trial 18 -seed 0 -type SAC -env_dt 0.15
python3 train.py -trial 18 -seed 1 -type SAC -env_dt 0.15
python3 train.py -trial 18 -seed 2 -type SAC -env_dt 0.15
python3 train.py -trial 18 -seed 3 -type SAC -env_dt 0.15
python3 train.py -trial 18 -seed 4 -type SAC -env_dt 0.15
python3 plot_graph.py -trial 18 -type SAC
python3 test.py -trial 18 -seed 0 -type SAC -env_dt 0.15
python3 test.py -trial 18 -seed 1 -type SAC -env_dt 0.15
python3 test.py -trial 18 -seed 2 -type SAC -env_dt 0.15
python3 test.py -trial 18 -seed 3 -type SAC -env_dt 0.15
python3 test.py -trial 18 -seed 4 -type SAC -env_dt 0.15

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

#python3 train.py -trial 11 -seed 0 -type PPO -env_dt 0.05 -up_step 1000
#python3 train.py -trial 11 -seed 1 -type PPO -env_dt 0.05 -up_step 1000
#python3 train.py -trial 11 -seed 2 -type PPO -env_dt 0.05 -up_step 1000
#python3 train.py -trial 11 -seed 3 -type PPO -env_dt 0.05 -up_step 1000
#python3 train.py -trial 11 -seed 4 -type PPO -env_dt 0.05 -up_step 1000
#python3 plot_graph.py -trial 11 -type PPO
#python3 test.py -trial 11 -seed 0 -type PPO -env_dt 0.05
#python3 test.py -trial 11 -seed 1 -type PPO -env_dt 0.05
#python3 test.py -trial 11 -seed 2 -type PPO -env_dt 0.05
#python3 test.py -trial 11 -seed 3 -type PPO -env_dt 0.05
#python3 test.py -trial 11 -seed 4 -type PPO -env_dt 0.05

#python3 train.py -trial 12 -seed 0 -type PPO -env_dt 0.05 -up_step 4000
#python3 train.py -trial 12 -seed 1 -type PPO -env_dt 0.05 -up_step 4000
#python3 train.py -trial 12 -seed 2 -type PPO -env_dt 0.05 -up_step 4000
#python3 train.py -trial 12 -seed 3 -type PPO -env_dt 0.05 -up_step 4000
#python3 train.py -trial 12 -seed 4 -type PPO -env_dt 0.05 -up_step 4000
#python3 plot_graph.py -trial 12 -type PPO
#python3 test.py -trial 12 -seed 0 -type PPO -env_dt 0.05
#python3 test.py -trial 12 -seed 1 -type PPO -env_dt 0.05
#python3 test.py -trial 12 -seed 2 -type PPO -env_dt 0.05
#python3 test.py -trial 12 -seed 3 -type PPO -env_dt 0.05
#python3 test.py -trial 12 -seed 4 -type PPO -env_dt 0.05