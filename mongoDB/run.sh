#!/bin/bash

cd /mnt/ramdisk/ycsb-0.5.0
./bin/ycsb load mongodb -s -P workloads/workloadA -threads 16 > syncLoad
./bin/ycsb run mongodb -s -P workloads/workloadA -threads 16 > syncRun
perl getResults.pl syncLoad syncRun >> results
nano results
