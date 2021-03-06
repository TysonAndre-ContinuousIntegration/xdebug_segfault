# xdebug_segfault
Test cases for reproducing xdebug crashes in php 7 and 2.5.0

(Bug https://bugs.xdebug.org/view.php?id=1329 seems to be
fixed in bb535ed28312799b23fac32a6b02ef7e55e869a4 (not part of 2.5.0) for all files)

It seems to be reading undefined variables, resulting in behavior such as segfaults, etc.
In the centos Dockerfile, it results in allocating a string which is too large.
(Host OS is "Linux Mint 17.1 Rebecca")

# Running

To build php and xdebug in a dockerfile, and run a test case with valgrind:

	./run_testcase.sh

To avoid building the docker image each time:

	. ./build_dockerfile.sh
	export VERSION
	# or export VERSION=7.0.14
	. ./run_testcase_inner.sh

# Configuring

To change PHP version, change the line `export VERSION=7.0.14` in build\_dockerfile.sh
(or export VERSION=7.0.13 before running, to install an alternative php version)

install\_php.sh and the Dockerfile contain compilation flags, configuration flags for php and xdebug.

# Errors

[valgrind\_output.txt](valgrind_output.txt) contains valgrind output for 2.4.?, with the environment variable `USE_ZEND_ALLOC=0` set.
(Don't use php's allocator emalloc, use malloc)

[no\_valgrind\_output.txt](no_valgrind_output.txt) contains php output, without valgrind.
