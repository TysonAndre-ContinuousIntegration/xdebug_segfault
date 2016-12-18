#!/bin/bash -xeu
if [[ "$XDEBUG_VERSION" =~ ^[0-9a-zA-Z]{8,}$ ]] ; then
	wget "https://github.com/xdebug/xdebug/archive/$XDEBUG_VERSION.zip" 
else
	wget https://xdebug.org/files/xdebug-$XDEBUG_VERSION.tgz --no-check-certificate  
fi
