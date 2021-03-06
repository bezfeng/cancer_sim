#!/bin/sh

OWD=$PWD
TESTDIR=$PWD/test
TEST="casim_test"

cd $TESTDIR

timestamp=$(date +%FT%T)
LOG="${OWD}/${TEST}@${timestamp}.log"

python $TEST.py -v 2>&1 | tee $LOG

echo "\n"
echo "Ran $TEST.py in $TESTDIR.\nLog went to $LOG."
echo "\n"
