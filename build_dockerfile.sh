#!/bin/bash

# php version
export VERSION=7.0.9
sudo docker build --build-arg=VERSION=$VERSION -t xdebug_segfault:$VERSION .
