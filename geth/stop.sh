#!/usr/bin/env sh

pkill -F $PWD/bootnode.pid
pkill -F $PWD/data1/node.pid
pkill -F $PWD/data2/node.pid

rm $PWD/bootnode.pid
rm $PWD/data1/node.pid
rm $PWD/data2/node.pid
