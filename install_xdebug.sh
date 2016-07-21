#!/bin/bash -xeu
tar zxf xdebug-${XDEBUG_VERSION}.tgz
cd xdebug-${XDEBUG_VERSION}
phpize
./configure
make clean install
