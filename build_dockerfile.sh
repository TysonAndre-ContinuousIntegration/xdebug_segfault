#!/bin/bash

# php version
export VERSION=7.0.9
export XDEBUG_VERSION=2016-07-06-bcb45ac
sudo docker build --build-arg=VERSION=$VERSION --build-arg=XDEBUG_VERSION=$XDEBUG_VERSION -t xdebug_segfault:$VERSION-$XDEBUG_VERSION .
