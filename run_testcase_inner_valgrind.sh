#!/bin/bash -xeu
VERSION=${VERSION:-7.0.8}
exec sudo docker run -v $PWD/tests:/tests xdebug_segfault:$VERSION /bin/sh -c 'php --php-ini tests/php.ini; php-config; USE_ZEND_ALLOC=0 exec valgrind php --php-ini tests/php.ini tests/test5.php'
