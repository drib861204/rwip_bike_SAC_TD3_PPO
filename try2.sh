#!/bin/sh
# SAC 79 validate SAC 34

for i in 0 1 2 3 4
do
  python3 train2.py -trial 79 -seed $i -type SAC
  python3 test2.py -trial 79 -seed $i -type SAC
done
python3 plot_graph.py -trial 79 -type SAC
