#!/bin/bash -xeu
. ./build_dockerfile.sh
export VERSION
echo -e "\n\nrunning test case without valgrind, with emalloc\n"
./run_testcase_inner.sh
echo -e "\n\nrunning test case with valgrind and malloc instead of emalloc\n"
./run_testcase_inner_valgrind.sh
