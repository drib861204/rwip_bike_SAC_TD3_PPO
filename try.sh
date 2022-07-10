#!/bin/sh
# SAC 45-49 continued_training rwip34, tune I_rod_ratio

python3 train.py -trial 45 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.8
python3 train.py -trial 45 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.8
python3 train.py -trial 45 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.8
python3 train.py -trial 45 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.8
python3 train.py -trial 45 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.8
python3 plot_graph.py -trial 45 -type SAC
python3 test.py -trial 45 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.8
python3 test.py -trial 45 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.8
python3 test.py -trial 45 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.8
python3 test.py -trial 45 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.8
python3 test.py -trial 45 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.8

python3 train.py -trial 46 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
python3 train.py -trial 46 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
python3 train.py -trial 46 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
python3 train.py -trial 46 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
python3 train.py -trial 46 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
python3 plot_graph.py -trial 46 -type SAC
python3 test.py -trial 46 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
python3 test.py -trial 46 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
python3 test.py -trial 46 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
python3 test.py -trial 46 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
python3 test.py -trial 46 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9

python3 train.py -trial 47 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
python3 train.py -trial 47 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
python3 train.py -trial 47 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
python3 train.py -trial 47 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
python3 train.py -trial 47 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
python3 plot_graph.py -trial 47 -type SAC
python3 test.py -trial 47 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
python3 test.py -trial 47 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
python3 test.py -trial 47 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
python3 test.py -trial 47 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
python3 test.py -trial 47 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0

python3 train.py -trial 48 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
python3 train.py -trial 48 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
python3 train.py -trial 48 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
python3 train.py -trial 48 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
python3 train.py -trial 48 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
python3 plot_graph.py -trial 48 -type SAC
python3 test.py -trial 48 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
python3 test.py -trial 48 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
python3 test.py -trial 48 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
python3 test.py -trial 48 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
python3 test.py -trial 48 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1

python3 train.py -trial 49 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
python3 train.py -trial 49 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
python3 train.py -trial 49 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
python3 train.py -trial 49 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
python3 train.py -trial 49 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
python3 plot_graph.py -trial 49 -type SAC
python3 test.py -trial 49 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
python3 test.py -trial 49 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
python3 test.py -trial 49 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
python3 test.py -trial 49 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
python3 test.py -trial 49 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2

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

#python3 train.py -trial 24 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 10
#python3 train.py -trial 24 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 10
#python3 train.py -trial 24 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 10
#python3 train.py -trial 24 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 10
#python3 train.py -trial 24 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 10
#python3 plot_graph.py -trial 24 -type PPO
#python3 test.py -trial 24 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 24 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 24 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 24 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 24 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001

#python3 train.py -trial 25 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 40
#python3 train.py -trial 25 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 40
#python3 train.py -trial 25 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 40
#python3 train.py -trial 25 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 40
#python3 train.py -trial 25 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 40
#python3 plot_graph.py -trial 25 -type PPO
#python3 test.py -trial 25 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 25 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 25 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 25 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 25 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001

#python3 train.py -trial 26 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 120
#python3 train.py -trial 26 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 120
#python3 train.py -trial 26 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 120
#python3 train.py -trial 26 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 120
#python3 train.py -trial 26 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001 --K_epochs 120
#python3 plot_graph.py -trial 26 -type PPO
#python3 test.py -trial 26 -seed 0 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 26 -seed 1 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 26 -seed 2 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 26 -seed 3 -type PPO -reward_function 1 -w_q2dot 0.001
#python3 test.py -trial 26 -seed 4 -type PPO -reward_function 1 -w_q2dot 0.001
