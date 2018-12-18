# About
High-Performance Linpack (HPL) benchmarking using *one line* Docker command. Quick and dirty way to compare performance for different computers & virtual machines.

Default HPL.dat file works on 4 cores and 2GB of memory. Full test takes about 3 mins. Results are written to log.out file.

## Tuning HPL.dat file
http://www.advancedclustering.com/act_kb/tune-hpl-dat-file/

## Running
docker run -v ${PWD}:/usr/local/hpl-2.2/HPLtest ashael/hpl HPLtest/run.sh

## Installing Docker on Ubuntu
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04
