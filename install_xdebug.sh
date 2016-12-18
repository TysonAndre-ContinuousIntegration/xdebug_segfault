#!/bin/bash -xeu
# release tarfile
TAR_PATH="xdebug-${XDEBUG_VERSION}.tgz"
# github zip
ZIP_PATH="${XDEBUG_VERSION}.zip"
if [[ -e "$TAR_PATH" ]]; then
	tar zxf "$TAR_PATH"
elif [[ -e "$ZIP_PATH" ]] ; then
	unzip "$ZIP_PATH"
else
	ls -la
	echo "Failed to find '$TAR_PATH' or '$ZIP_PATH' in current directory"
	exit 1
fi
cd xdebug-${XDEBUG_VERSION}
phpize
./configure
make clean install
