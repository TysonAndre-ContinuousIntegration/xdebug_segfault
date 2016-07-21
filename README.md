# xdebug_segfault
Test cases for reproducing xdebug crashes in 2.4.0

It seems to be reading undefined variables, resulting in behavior such as segfaults, etc.
In the centos Dockerfile, it results in allocating a string which is too large.
(Host OS is "Linux Mint 17.1 Rebecca")

# Running

To build php and xdebug in a dockerfile, and run a test case with valgrind:

	./run_testcase.sh

To avoid building the docker image each time:

	. ./build_dockerfile.sh
	export VERSION
	# or export VERSION=7.0.9
	. ./run_testcase_inner.sh

# Configuring

To change PHP version, change the line `export VERSION=7.0.9` in build\_dockerfile.sh

