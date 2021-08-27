#!/bin/bash

POOL=stratum+tcp://beamv3.eu-west.nicehash.com:3387

WALLET=3P8DtYzCrvhuj448RHdAMSmdLnsKCDBsK8

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-BTCNICEHASH

cd "$(dirname "$0")"

chmod +x ./lol && sudo ./lol --algo BEAM-III --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY

