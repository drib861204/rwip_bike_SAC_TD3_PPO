#!/bin/sh
# SAC 81-84 tune max torque & torque delay

for i in 0 1 2 3 4
do
  python3 train.py -trial 81 -seed $i -type SAC -max_torque 11.0 -torque_delay 0
  python3 test.py -trial 81 -seed $i -type SAC -max_torque 11.0 -torque_delay 0
done
python3 plot_graph.py -trial 81 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 82 -seed $i -type SAC -max_torque 6.0 -torque_delay 0
  python3 test.py -trial 82 -seed $i -type SAC -max_torque 6.0 -torque_delay 0
done
python3 plot_graph.py -trial 82 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 83 -seed $i -type SAC -max_torque 11.0 -torque_delay 2
  python3 test.py -trial 83 -seed $i -type SAC -max_torque 11.0 -torque_delay 2
done
python3 plot_graph.py -trial 83 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 84 -seed $i -type SAC -max_torque 6.0 -torque_delay 2
  python3 test.py -trial 84 -seed $i -type SAC -max_torque 6.0 -torque_delay 2
done
python3 plot_graph.py -trial 84 -type SAC
