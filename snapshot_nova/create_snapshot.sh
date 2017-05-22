#!/bin/bash

index=0

while true;
do
        echo "Creating snapshot... $index"
        echo 1 > /proc/fs/NOVA/pmem0/create_snapshot
        index=$(($index + 1))
        sleep 10
done
