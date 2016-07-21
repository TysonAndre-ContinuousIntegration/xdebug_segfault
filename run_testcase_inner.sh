#!/bin/bash -xeu
VERSION=${VERSION:-7.0.9}
XDEBUG_VERSION=${XDEBUG_VERSION:-2.4.0}
exec sudo docker run -v $PWD/tests:/tests xdebug_segfault:$VERSION-$XDEBUG_VERSION sh -c 'php --php-ini tests/php.ini --version; php-config; exec php --php-ini tests/php.ini tests/test5.php'
