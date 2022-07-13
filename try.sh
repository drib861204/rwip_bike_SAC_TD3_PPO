#!/bin/sh
# SAC 69-72 I2->0.006, tune max_torque, add torque delay:2 & 3

for i in 0 1 2 3 4
do
  python3 train.py -trial 69 -seed $i -type SAC -max_torque 11.0 -torque_delay 2
done
python3 plot_graph.py -trial 69 -type SAC
for i in 0 1 2 3 4
do
  python3 test.py -trial 69 -seed $i -type SAC -max_torque 11.0 -torque_delay 2
done

for i in 0 1 2 3 4
do
  python3 train.py -trial 70 -seed $i -type SAC -max_torque 6.0 -torque_delay 2
done
python3 plot_graph.py -trial 70 -type SAC
for i in 0 1 2 3 4
do
  python3 test.py -trial 70 -seed $i -type SAC -max_torque 6.0 -torque_delay 2
done

for i in 0 1 2 3 4
do
  python3 train.py -trial 71 -seed $i -type SAC -max_torque 11.0 -torque_delay 3
done
python3 plot_graph.py -trial 71 -type SAC
for i in 0 1 2 3 4
do
  python3 test.py -trial 71 -seed $i -type SAC -max_torque 11.0 -torque_delay 3
done

for i in 0 1 2 3 4
do
  python3 train.py -trial 72 -seed $i -type SAC -max_torque 6.0 -torque_delay 3
done
python3 plot_graph.py -trial 72 -type SAC
for i in 0 1 2 3 4
do
  python3 test.py -trial 72 -seed $i -type SAC -max_torque 6.0 -torque_delay 3
done

