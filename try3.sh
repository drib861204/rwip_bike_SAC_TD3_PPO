#!/bin/sh
# SAC 80 validate SAC 34

for i in 0 1 2 3 4
do
  python3 train3.py -trial 80 -seed $i -type SAC -reward_function 1 -w_q2dot 0.001 -torque_delay 0
  python3 test3.py -trial 80 -seed $i -type SAC -reward_function 1 -w_q2dot 0.001 -torque_delay 0
done
python3 plot_graph.py -trial 80 -type SAC
