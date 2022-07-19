#!/bin/sh
# FIN: SAC 97-98: tune replay_memory

for i in 0 1 2 3 4
do
  python3 train.py -trial 97 -seed $i -type SAC -repm 500
  python3 test.py -trial 97 -seed $i -type SAC
done
python3 plot_graph.py -trial 97 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 98 -seed $i -type SAC -repm 100
  python3 test.py -trial 98 -seed $i -type SAC
done
python3 plot_graph.py -trial 98 -type SAC
