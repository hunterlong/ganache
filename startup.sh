#!/bin/bash
touch ./geth.log
ganache-cli -d 75.12345 --seed visit exotic maximum -a 100 > ./geth.log &
sleep 10
tail -f ./geth.log