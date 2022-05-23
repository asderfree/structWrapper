#!/bin/sh
for i in $(seq 1 10000000);do
    echo $i | ./$1;
done
