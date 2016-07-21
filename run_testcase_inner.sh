#!/bin/bash -xeu
VERSION=${VERSION:-7.0.8}
exec sudo docker run -v $PWD/tests:/tests xdebug_segfault:$VERSION php --php-ini tests/php.ini tests/test5.php
