#!/bin/bash
touch ./geth.log
ganache-cli -d 75.12345 --seed visit exotic maximum -a 100 > ./geth.log &
sleep 5
curl -X POST -H 'Content-Type: application/json' -d @token.json http://localhost:8545
tail -f ./geth.log