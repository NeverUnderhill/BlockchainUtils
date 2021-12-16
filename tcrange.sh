#!/bin/bash
for i in {1..100000000..1000000}
do
    let n=`./getTransactionCount.sh $i`;
    echo "$i $n"
    sleep 0.1
done
