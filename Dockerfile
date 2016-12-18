FROM centos:6.6

ENV LAST_MODIFIED_DATE 2016-07-21

RUN yum update -y
RUN yum groupinstall -y "Development Tools"
RUN yum install -y libtool-ltdl-devel gcc gcc-c++ flex bison libtool httpd-devel libjpeg-devel xz rpm-build freetype-devel readline-devel zlib-devel gmp fontconfig-devel libmcrypt-devel  bzip2-devel git perl-Error scons libicu libicu-devel wget sudo python27 cmake28 tar bzip2 libxml2-devel

# Packages useful for debugging later
RUN yum install valgrind gdb -y
ARG VERSION=7.0.14
RUN wget -O php-$VERSION.tar.bz2 http://php.net/get/php-$VERSION.tar.bz2/from/this/mirror
ENV CFLAGS "-O3 -g"
ENV CPPFLAGS $CFLAGS
ADD install_php.sh .
RUN export VERSION CFLAGS CPPFLAGS; ./install_php.sh
ARG XDEBUG_VERSION=2.5.0
ADD download_xdebug.sh .
RUN ./download_xdebug.sh
ADD install_xdebug.sh .
RUN export XDEBUG_VERSION CFLAGS CPPFLAGS; ./install_xdebug.sh
