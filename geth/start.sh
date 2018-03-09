#!/usr/bin/env sh

nohup bootnode -nodekey bootnode.key > bootnode.log 2>&1 &
echo $! > $PWD/bootnode.pid
echo "Bootnode stared."

sleep 2

nohup geth \
  --bootnodes enode://744ae75e44fb51f95a92a5ca29f8f8273b2501e3025157e9fca30b01a4baf2c01912dc9269a24b6c14642551d7dc50479244a7e5cd35e09446850730967520f3@127.0.0.1:30301 \
  --datadir "$PWD/data1"  \
  --syncmode 'full' \
  --port 30303  \
  --rpc --rpcport 8540  \
  --wsport 8546 --rpccorsdomain "*"  \
  --wsorigins "*"  \
  --gasprice "0" \
  --unlock "0x9fb29aac15b9a4b7f17c3385939b007540f4d791"  \
  --password "$PWD/node.password"  \
  --networkid 13 --mine > $PWD/data1/node.log 2>&1 &
echo $! > $PWD/data1/node.pid
echo "Node 1 started. Check data1/node.log for more logs"

sleep 2

nohup geth \
  --bootnodes enode://744ae75e44fb51f95a92a5ca29f8f8273b2501e3025157e9fca30b01a4baf2c01912dc9269a24b6c14642551d7dc50479244a7e5cd35e09446850730967520f3@127.0.0.1:30301 \
  --datadir "$PWD/data2" \
  --syncmode 'full' \
  --port 40303 \
  --rpc --rpcport 9545 \
  --wsport 9546 --rpccorsdomain "*" \
  --wsorigins "*" \
  --gasprice "0" \
  --unlock "0xacf8eccdca12a0eb6ae4fb1431e26c44e66decdb" \
  --password "$PWD/node.password" \
  --networkid 13 --mine > $PWD/data2/node.log 2>&1 &
echo $! > $PWD/data2/node.pid
echo "Node 2 started. Check data2/node.log for more logs"
