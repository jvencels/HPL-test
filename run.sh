#!/bin/bash
cd "$(dirname "$0")"

lscpu | grep "Model name:" > log.out
lscpu | grep "Flags:" >> log.out

mpirun --allow-run-as-root -n 4 ../bin/Linux/xhpl >> log.out
mpirun --allow-run-as-root -n 4 ../bin/Linux/xhpl >> log.out
mpirun --allow-run-as-root -n 4 ../bin/Linux/xhpl >> log.out
