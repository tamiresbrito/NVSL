#!/bin/bash

cd /mnt/ramdisk/
curl -O --location https://github.com/brianfrankcooper/YCSB/releases/download/0.5.0/ycsb-0.5.0.tar.gz
tar xfvz ycsb-0.5.0.tar.gz
cd ycsb-0.5.0
cat workloads/workloada | sed 's/recordcount=1000/recordcount=500000/' | sed 's/operationcount=1000/operationcount=500000/'  > workloads/workloadA
cd /root/snapshot_nova/
cp getResults.pl /mnt/ramdisk/ycsb-0.5.0
