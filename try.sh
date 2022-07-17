#!/bin/sh
# FIN: SAC 92: two states: q1, q2 dot

for i in 0 1 2 3 4
do
  python3 train.py -trial 92 -seed $i -type SAC -two_state 1
  python3 test.py -trial 92 -seed $i -type SAC -two_state 1
done
python3 plot_graph.py -trial 92 -type SAC
