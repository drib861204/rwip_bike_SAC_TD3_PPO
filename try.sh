#!/bin/sh
# SAC 73-74 I2->0.006, tune max_torque, add torque delay:4(original state:q1, q1dot, q2dot)
# SAC 75-77 I2->0.006, torque delay:2, tune rep_max

for i in 0 1 2 3 4
do
  python3 train.py -trial 73 -seed $i -type SAC -max_torque 11.0 -torque_delay 4
  python3 test.py -trial 73 -seed $i -type SAC -max_torque 11.0 -torque_delay 4
done
python3 plot_graph.py -trial 73 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 74 -seed $i -type SAC -max_torque 6.0 -torque_delay 4
  python3 test.py -trial 74 -seed $i -type SAC -max_torque 6.0 -torque_delay 4
done
python3 plot_graph.py -trial 74 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 75 -seed $i -type SAC -max_torque 6.0 -torque_delay 2 -rep_max 20
  python3 test.py -trial 75 -seed $i -type SAC -max_torque 6.0 -torque_delay 2 -rep_max 20
done
python3 plot_graph.py -trial 75 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 76 -seed $i -type SAC -max_torque 6.0 -torque_delay 2 -rep_max 50
  python3 test.py -trial 76 -seed $i -type SAC -max_torque 6.0 -torque_delay 2 -rep_max 50
done
python3 plot_graph.py -trial 76 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 77 -seed $i -type SAC -max_torque 6.0 -torque_delay 2 -rep_max 100
  python3 test.py -trial 77 -seed $i -type SAC -max_torque 6.0 -torque_delay 2 -rep_max 100
done
python3 plot_graph.py -trial 77 -type SAC

