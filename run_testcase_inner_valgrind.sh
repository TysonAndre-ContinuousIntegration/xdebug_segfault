#!/bin/bash -xeu
VERSION=${VERSION:-7.0.14}
XDEBUG_VERSION=${XDEBUG_VERSION:-2.5.0}
TEST_FILE=${TEST:-test8.php}
exec sudo docker run -v $PWD/tests:/tests xdebug_segfault:$VERSION-$XDEBUG_VERSION /bin/sh -c "php --php-ini tests/php.ini; php-config; USE_ZEND_ALLOC=0 exec valgrind php --php-ini tests/php.ini tests/$TEST_FILE"
