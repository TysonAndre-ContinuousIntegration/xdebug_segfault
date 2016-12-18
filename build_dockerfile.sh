#!/bin/bash -xeu

# php version
export VERSION=${VERSION:-7.0.14}
# Master branch on december 17, 2016 is bb535ed28312799b23fac32a6b02ef7e55e869a4
export XDEBUG_VERSION=${XDEBUG_VERSION:-2.5.0}
sudo docker build --build-arg=VERSION=$VERSION --build-arg=XDEBUG_VERSION=$XDEBUG_VERSION -t xdebug_segfault:$VERSION-$XDEBUG_VERSION .
