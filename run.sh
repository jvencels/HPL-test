#!/bin/bash
cd "$(dirname "$0")"

while getopts ":n:t:" flag; do
  case "$flag" in
    n  ) nprocs=$OPTARG ;;
    t  ) ntests=$OPTARG ;;
    \? ) echo "Unknown option: -$OPTARG" >&2; exit 1;;
    :  ) echo "Missing option argument for -$OPTARG" >&2; exit 1;;
    *  ) echo "Unexpected option ${flag}. Valid options are -np, -nt" && exit 1;;
  esac
done

lscpu | grep "Model name:" > log.out
lscpu | grep "Flags:" >> log.out

for i in `seq 1 $ntests`;
do
  echo "**** Running test $i ****"
  mpirun --allow-run-as-root -n $nprocs ../bin/Linux/xhpl >> log.out
done

