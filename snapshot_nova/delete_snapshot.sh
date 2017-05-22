#!/bin/bash

i=$1

while(("$i"<="$2"))
do
        echo $i > /proc/fs/NOVA/pmem0/delete_snapshot
        i=$(($i + 1))
done

