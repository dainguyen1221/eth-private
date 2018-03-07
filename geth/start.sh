#!/usr/bin/env sh
geth --datadir "$PWD/data" --targetgaslimit '9000000000000' --rpc --rpcport 8546 --rpccorsdomain "*" --wsorigins "*" --unlock "0x9fb29aac15b9a4b7f17c3385939b007540f4d791,0xacf8eccdca12a0eb6ae4fb1431e26c44e66decdb" --password "$PWD/node.password" --networkid 13 --mine
