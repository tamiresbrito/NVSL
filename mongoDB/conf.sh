#!/bin/bash

cd /usr/src/nova-dev
make
nano setup-nova.sh
bash setup-nova.sh
mount | grep -i NOVA
cd /root/mongodb-linux-x86_64-3.4.4
echo never > /sys/kernel/mm/transparent_hugepage/enabled
sleep 30
numactl --interleave=all ./bin/mongod  --dbpath=/mnt/ramdisk
