#!/bin/bash

set -eo pipefail

if [[ "$(id -u)" -ne "0" ]]; then
    echo "This script requires root."
    exit 1
fi

TAG_PATH=${1-`pwd`}
echo "target path: $TAG_PATH"

docker build --tag openwrt-build:18.04 --network host .

cd $TAG_PATH
git clone https://github.com/coolsnowwolf/lede

docker run -itd --name openwrt-build -v `pwd`/lede:/root openwrt-build:18.04