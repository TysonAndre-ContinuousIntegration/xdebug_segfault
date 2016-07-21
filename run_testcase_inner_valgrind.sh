#!/bin/bash -xeu
VERSION=${VERSION:-7.0.9}
XDEBUG_VERSION=${XDEBUG_VERSION:-2.4.0}
exec sudo docker run -v $PWD/tests:/tests xdebug_segfault:$VERSION-$XDEBUG_VERSION /bin/sh -c 'php --php-ini tests/php.ini; php-config; USE_ZEND_ALLOC=0 exec valgrind php --php-ini tests/php.ini tests/test6.php'
