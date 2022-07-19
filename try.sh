#!/bin/sh
# FIN: SAC 114 -torque_delay 4

# SAC torque delay
for i in 0 1 2 3 4
do
  python3 train.py -trial 114 -seed $i -type SAC -torque_delay 4
  python3 test.py -trial 114 -seed $i -type SAC -torque_delay 4
done
python3 plot_graph.py -trial 114 -type SAC

