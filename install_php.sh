#!/bin/bash -xeu
tar jxf php-${VERSION}.tar.bz2
cd php-${VERSION}
CONFIGOPTIONS="--enable-exif --localstatedir=/var --sysconfdir=/etc --with-config-file-path=/etc --without-pdo-sqlite --without-sqlite3 --without-pear --enable-inline-optimization --enable-ctype  --enable-session --enable-wddx --with-zlib=/usr --with-layout=GNU --enable-json --enable-filter --enable-hash --enable-bcmath=shared  --enable-fd-setsize=10000 --enable-pcntl --enable-zend-signals --with-apxs2 --with-bz2 --enable-intl --enable-fpm --enable-phpdbg"
CONFIGOPTIONS="$CONFIGOPTIONS --enable-debug" # debug compiler options will apply to extensions as well.
rm -f config.cache
./configure $CONFIGOPTIONS
make clean
make -j8
make install
