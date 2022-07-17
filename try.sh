#!/bin/sh
# FIN: 
# SAC 90: reward function only q1 & done cost
# SAC 91: q1+q1dot+q2dot & no done cost, max_q1->90deg

for i in 0 1 2 3 4
do
  python3 train.py -trial 90 -seed $i -type SAC -reward_function 8
  python3 test.py -trial 90 -seed $i -type SAC -reward_function 8
done
python3 plot_graph.py -trial 90 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 91 -seed $i -type SAC -reward_function 1 -max_q1 90
  python3 test.py -trial 91 -seed $i -type SAC -reward_function 1 -max_q1 90
done
python3 plot_graph.py -trial 91 -type SAC
