#!/bin/sh
# SAC 85 cancel state normalization

for i in 0 1 2 3 4
do
  python3 train.py -trial 85 -seed $i -type SAC
  python3 test.py -trial 85 -seed $i -type SAC
done
python3 plot_graph.py -trial 85 -type SAC
