#!/usr/bin/env sh
nohup parity --config config.toml > $PWD/data/node.log 2>&1 &
echo $! > $PWD/data/node.pid
echo "Node started. Check data/node.log for more logs"
