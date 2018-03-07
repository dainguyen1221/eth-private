#!/usr/bin/env sh
rm -rf data/*
mkdir -p data/keystore
cp keystore/* data/keystore/
geth --datadir "$PWD/data" init ./genesis.json
