#!/bin/sh
# FIN
# TD3 35,36 tune start_timesteps 500, 100

python3 train.py -trial 35 -seed 0 -type TD3 -reward_function 4 -w_dtau 0.0001 --start_timesteps 500
python3 train.py -trial 35 -seed 1 -type TD3 -reward_function 4 -w_dtau 0.0001 --start_timesteps 500
python3 train.py -trial 35 -seed 2 -type TD3 -reward_function 4 -w_dtau 0.0001 --start_timesteps 500
python3 train.py -trial 35 -seed 3 -type TD3 -reward_function 4 -w_dtau 0.0001 --start_timesteps 500
python3 train.py -trial 35 -seed 4 -type TD3 -reward_function 4 -w_dtau 0.0001 --start_timesteps 500
python3 plot_graph.py -trial 35 -type TD3
python3 test.py -trial 35 -seed 0 -type TD3 -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 35 -seed 1 -type TD3 -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 35 -seed 2 -type TD3 -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 35 -seed 3 -type TD3 -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 35 -seed 4 -type TD3 -reward_function 4 -w_dtau 0.0001

python3 train.py -trial 36 -seed 0 -type TD3 -reward_function 4 -w_dtau 0.0001 --start_timesteps 100
python3 train.py -trial 36 -seed 1 -type TD3 -reward_function 4 -w_dtau 0.0001 --start_timesteps 100
python3 train.py -trial 36 -seed 2 -type TD3 -reward_function 4 -w_dtau 0.0001 --start_timesteps 100
python3 train.py -trial 36 -seed 3 -type TD3 -reward_function 4 -w_dtau 0.0001 --start_timesteps 100
python3 train.py -trial 36 -seed 4 -type TD3 -reward_function 4 -w_dtau 0.0001 --start_timesteps 100
python3 plot_graph.py -trial 36 -type TD3
python3 test.py -trial 36 -seed 0 -type TD3 -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 36 -seed 1 -type TD3 -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 36 -seed 2 -type TD3 -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 36 -seed 3 -type TD3 -reward_function 4 -w_dtau 0.0001
python3 test.py -trial 36 -seed 4 -type TD3 -reward_function 4 -w_dtau 0.0001
