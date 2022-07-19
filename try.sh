#!/bin/sh
# FIN: SAC 93-96: tune replay_memory

for i in 0 1 2 3 4
do
  #python3 train.py -trial 93 -seed $i -type SAC -repm 50000
  python3 test.py -trial 93 -seed $i -type SAC
done
#python3 plot_graph.py -trial 93 -type SAC

for i in 0 1 2 3 4
do
  #python3 train.py -trial 94 -seed $i -type SAC -repm 10000
  python3 test.py -trial 94 -seed $i -type SAC
done
#python3 plot_graph.py -trial 94 -type SAC

for i in 0 1 2 3 4
do
  #python3 train.py -trial 95 -seed $i -type SAC -repm 5000
  python3 test.py -trial 95 -seed $i -type SAC
done
#python3 plot_graph.py -trial 95 -type SAC

for i in 0 1 2 3 4
do
  #python3 train.py -trial 96 -seed $i -type SAC -repm 1000
  python3 test.py -trial 96 -seed $i -type SAC
done
#python3 plot_graph.py -trial 96 -type SAC
