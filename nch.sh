#!/bin/bash

POOL=stratum+tcp://scrypt.eu-west.nicehash.com:3333

WALLET=3P8DtYzCrvhuj448RHdAMSmdLnsKCDBsK8

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-BTCNICEHASH

cd "$(dirname "$0")"

chmod +x ./xmgrig && sudo ./xmgrig --algo SCRYPT --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY

