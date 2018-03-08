#!/usr/bin/env sh

pkill -F $PWD/bootnode.pid
rm bootnode.log bootnode.pid

pkill -F $PWD/data1/node.pid
rm -rf data1/*
mkdir -p data1/keystore

pkill -F $PWD/data2/node.pid
rm -rf data2/*
mkdir -p data2/keystore

cp keystore/UTC--2018-02-19T10-26-21.638675000Z--9fb29aac15b9a4b7f17c3385939b007540f4d791 data1/keystore/
cp keystore/UTC--2018-02-18T14-45-31.445018000Z--acf8eccdca12a0eb6ae4fb1431e26c44e66decdb data2/keystore/

geth --datadir "$PWD/data1" init ./genesis.json
geth --datadir "$PWD/data2" init ./genesis.json
