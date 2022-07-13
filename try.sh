#!/bin/sh
# FIN: SAC 54-57 cancel done cost, add stay reward, 58-61 set reward floor

python3 train.py -trial 54 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001
python3 train.py -trial 54 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001
python3 train.py -trial 54 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001
python3 train.py -trial 54 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001
python3 train.py -trial 54 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001
python3 plot_graph.py -trial 54 -type SAC
python3 test.py -trial 54 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001
python3 test.py -trial 54 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001
python3 test.py -trial 54 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001
python3 test.py -trial 54 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001
python3 test.py -trial 54 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001

python3 train.py -trial 55 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01
python3 train.py -trial 55 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01
python3 train.py -trial 55 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01
python3 train.py -trial 55 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01
python3 train.py -trial 55 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01
python3 plot_graph.py -trial 55 -type SAC
python3 test.py -trial 55 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01
python3 test.py -trial 55 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01
python3 test.py -trial 55 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01
python3 test.py -trial 55 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01
python3 test.py -trial 55 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01

python3 train.py -trial 56 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1
python3 train.py -trial 56 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1
python3 train.py -trial 56 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1
python3 train.py -trial 56 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1
python3 train.py -trial 56 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1
python3 plot_graph.py -trial 56 -type SAC
python3 test.py -trial 56 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1
python3 test.py -trial 56 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1
python3 test.py -trial 56 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1
python3 test.py -trial 56 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1
python3 test.py -trial 56 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1

python3 train.py -trial 57 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0
python3 train.py -trial 57 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0
python3 train.py -trial 57 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0
python3 train.py -trial 57 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0
python3 train.py -trial 57 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0
python3 plot_graph.py -trial 57 -type SAC
python3 test.py -trial 57 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0
python3 test.py -trial 57 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0
python3 test.py -trial 57 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0
python3 test.py -trial 57 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0
python3 test.py -trial 57 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0

python3 train.py -trial 58 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001 -reward_floor 1
python3 train.py -trial 58 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001 -reward_floor 1
python3 train.py -trial 58 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001 -reward_floor 1
python3 train.py -trial 58 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001 -reward_floor 1
python3 train.py -trial 58 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001 -reward_floor 1
python3 plot_graph.py -trial 58 -type SAC
python3 test.py -trial 58 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001 -reward_floor 1
python3 test.py -trial 58 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001 -reward_floor 1
python3 test.py -trial 58 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001 -reward_floor 1
python3 test.py -trial 58 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001 -reward_floor 1
python3 test.py -trial 58 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.001 -reward_floor 1

python3 train.py -trial 59 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01 -reward_floor 1
python3 train.py -trial 59 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01 -reward_floor 1
python3 train.py -trial 59 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01 -reward_floor 1
python3 train.py -trial 59 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01 -reward_floor 1
python3 train.py -trial 59 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01 -reward_floor 1
python3 plot_graph.py -trial 59 -type SAC
python3 test.py -trial 59 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01 -reward_floor 1
python3 test.py -trial 59 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01 -reward_floor 1
python3 test.py -trial 59 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01 -reward_floor 1
python3 test.py -trial 59 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01 -reward_floor 1
python3 test.py -trial 59 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.01 -reward_floor 1

python3 train.py -trial 60 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1 -reward_floor 1
python3 train.py -trial 60 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1 -reward_floor 1
python3 train.py -trial 60 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1 -reward_floor 1
python3 train.py -trial 60 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1 -reward_floor 1
python3 train.py -trial 60 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1 -reward_floor 1
python3 plot_graph.py -trial 60 -type SAC
python3 test.py -trial 60 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1 -reward_floor 1
python3 test.py -trial 60 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1 -reward_floor 1
python3 test.py -trial 60 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1 -reward_floor 1
python3 test.py -trial 60 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1 -reward_floor 1
python3 test.py -trial 60 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 0.1 -reward_floor 1

python3 train.py -trial 61 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0 -reward_floor 1
python3 train.py -trial 61 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0 -reward_floor 1
python3 train.py -trial 61 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0 -reward_floor 1
python3 train.py -trial 61 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0 -reward_floor 1
python3 train.py -trial 61 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0 -reward_floor 1
python3 plot_graph.py -trial 61 -type SAC
python3 test.py -trial 61 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0 -reward_floor 1
python3 test.py -trial 61 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0 -reward_floor 1
python3 test.py -trial 61 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0 -reward_floor 1
python3 test.py -trial 61 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0 -reward_floor 1
python3 test.py -trial 61 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -stay_reward 1.0 -reward_floor 1

#python3 train.py -trial 46 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
#python3 train.py -trial 46 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
#python3 train.py -trial 46 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
#python3 train.py -trial 46 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
#python3 train.py -trial 46 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
#python3 plot_graph.py -trial 46 -type SAC
#python3 test.py -trial 46 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
#python3 test.py -trial 46 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
#python3 test.py -trial 46 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
#python3 test.py -trial 46 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9
#python3 test.py -trial 46 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 0.9

#python3 train.py -trial 47 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
#python3 train.py -trial 47 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
#python3 train.py -trial 47 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
#python3 train.py -trial 47 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
#python3 train.py -trial 47 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
#python3 plot_graph.py -trial 47 -type SAC
#python3 test.py -trial 47 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
#python3 test.py -trial 47 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
#python3 test.py -trial 47 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
#python3 test.py -trial 47 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0
#python3 test.py -trial 47 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.0

#python3 train.py -trial 48 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
#python3 train.py -trial 48 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
#python3 train.py -trial 48 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
#python3 train.py -trial 48 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
#python3 train.py -trial 48 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
#python3 plot_graph.py -trial 48 -type SAC
#python3 test.py -trial 48 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
#python3 test.py -trial 48 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
#python3 test.py -trial 48 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
#python3 test.py -trial 48 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1
#python3 test.py -trial 48 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.1

#python3 train.py -trial 49 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
#python3 train.py -trial 49 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
#python3 train.py -trial 49 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
#python3 train.py -trial 49 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
#python3 train.py -trial 49 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
#python3 plot_graph.py -trial 49 -type SAC
#python3 test.py -trial 49 -seed 0 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
#python3 test.py -trial 49 -seed 1 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
#python3 test.py -trial 49 -seed 2 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
#python3 test.py -trial 49 -seed 3 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2
#python3 test.py -trial 49 -seed 4 -type SAC -reward_function 1 -w_q2dot 0.001 -continued_training 1 -I_rod_ratio 1.2

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
