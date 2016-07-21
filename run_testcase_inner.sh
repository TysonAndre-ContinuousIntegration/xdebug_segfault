#!/bin/bash -xeu
VERSION=${VERSION:-7.0.9}
exec sudo docker run -v $PWD/tests:/tests xdebug_segfault:$VERSION sh -c 'php --php-ini tests/php.ini --version; php-config; exec php --php-ini tests/php.ini tests/test5.php'
