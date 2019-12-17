# About
High-Performance Linpack (HPL) benchmarking using *one line* Docker command. Quick and dirty way to compare performance for different computers & virtual machines.

Default HPL.dat file runs on ~2GB of memory. Results are written to log.out file.

## Tuning HPL.dat file
http://www.advancedclustering.com/act_kb/tune-hpl-dat-file/

## Running on 4 cores 3 times
cd HPL-test
docker run -v ${PWD}:/usr/local/hpl-2.2/HPLtest ashael/hpl HPLtest/run.sh -n 4 -t 3

## Installing Docker on Ubuntu
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04
