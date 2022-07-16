#!/bin/sh
# FIN: SAC 86-89 tune env dt

for i in 0 1 2 3 4
do
  python3 train.py -trial 86 -seed $i -type SAC -env_dt 0.1
  python3 test.py -trial 86 -seed $i -type SAC -env_dt 0.1
done
python3 plot_graph.py -trial 86 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 87 -seed $i -type SAC -env_dt 0.05
  python3 test.py -trial 87 -seed $i -type SAC -env_dt 0.05
done
python3 plot_graph.py -trial 87 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 88 -seed $i -type SAC -env_dt 0.01
  python3 test.py -trial 88 -seed $i -type SAC -env_dt 0.01
done
python3 plot_graph.py -trial 88 -type SAC

for i in 0 1 2 3 4
do
  python3 train.py -trial 89 -seed $i -type SAC -env_dt 0.005
  python3 test.py -trial 89 -seed $i -type SAC -env_dt 0.005
done
python3 plot_graph.py -trial 89 -type SAC
