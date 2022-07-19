#!/bin/sh
# replay memory -> 1000, frames 5W

# reward function q1+q1 dot
for i in 0 1 2 3 4
do
  python3 train.py -trial 99 -seed $i -type SAC -reward_function 0
  python3 test.py -trial 99 -seed $i -type SAC -reward_function 0
done
python3 plot_graph.py -trial 99 -type SAC

# reward function q1+q1 dot+q2 dot
for i in 0 1 2 3 4
do
  python3 train.py -trial 100 -seed $i -type SAC -reward_function 1
  python3 test.py -trial 100 -seed $i -type SAC -reward_function 1
done
python3 plot_graph.py -trial 100 -type SAC

# reward function q1+q1 dot+torque
for i in 0 1 2 3 4
do
  python3 train.py -trial 101 -seed $i -type SAC -reward_function 2
  python3 test.py -trial 101 -seed $i -type SAC -reward_function 2
done
python3 plot_graph.py -trial 101 -type SAC

# reward function q1+q1 dot+torque diff
for i in 0 1 2 3 4
do
  python3 train.py -trial 102 -seed $i -type SAC -reward_function 4
  python3 test.py -trial 102 -seed $i -type SAC -reward_function 4
done
python3 plot_graph.py -trial 102 -type SAC

# TD3 tune start_timesteps
for i in 0 1 2 3 4
do
  python3 train.py -trial 103 -seed $i -type TD3 --start_timesteps 500
  python3 test.py -trial 103 -seed $i -type TD3
done
python3 plot_graph.py -trial 103 -type TD3

for i in 0 1 2 3 4
do
  python3 train.py -trial 104 -seed $i -type TD3 --start_timesteps 1000
  python3 test.py -trial 104 -seed $i -type TD3
done
python3 plot_graph.py -trial 104 -type TD3

for i in 0 1 2 3 4
do
  python3 train.py -trial 105 -seed $i -type TD3 --start_timesteps 5000
  python3 test.py -trial 105 -seed $i -type TD3
done
python3 plot_graph.py -trial 105 -type TD3

for i in 0 1 2 3 4
do
  python3 train.py -trial 106 -seed $i -type TD3 --start_timesteps 10000
  python3 test.py -trial 106 -seed $i -type TD3
done
python3 plot_graph.py -trial 106 -type TD3

for i in 0 1 2 3 4
do
  python3 train.py -trial 107 -seed $i -type TD3 --start_timesteps 25000
  python3 test.py -trial 107 -seed $i -type TD3
done
python3 plot_graph.py -trial 107 -type TD3

# PPO update_step -> 1000
for i in 0 1 2 3 4
do
  python3 train.py -trial 108 -seed $i -type PPO
  python3 test.py -trial 108 -seed $i -type PPO
done
python3 plot_graph.py -trial 108 -type PPO

# SAC tune env_dt
for i in 0 1 2 3 4
do
  python3 train.py -trial 109 -seed $i -type SAC -env_dt 0.1
  python3 test.py -trial 109 -seed $i -type SAC -env_dt 0.1
done
python3 plot_graph.py -trial 109 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 110 -seed $i -type SAC -env_dt 0.01
  python3 test.py -trial 110 -seed $i -type SAC -env_dt 0.01
done
python3 plot_graph.py -trial 110 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 111 -seed $i -type SAC -env_dt 0.005
  python3 test.py -trial 111 -seed $i -type SAC -env_dt 0.005
done
python3 plot_graph.py -trial 111 -type SAC

# SAC cancel state normalization
for i in 0 1 2 3 4
do
  python3 train.py -trial 112 -seed $i -type SAC -norm_state 0
  python3 test.py -trial 112 -seed $i -type SAC -norm_state 0
done
python3 plot_graph.py -trial 112 -type SAC

# SAC torque delay
for i in 0 1 2 3 4
do
  python3 train.py -trial 113 -seed $i -type SAC -torque_delay 2
  python3 test.py -trial 113 -seed $i -type SAC -torque_delay 2
done
python3 plot_graph.py -trial 113 -type SAC

