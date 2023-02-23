#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

echo "We've set up a GitHub Actions Workflow that will run all"
echo "of the shell scripts in this directory as a series of tests."
echo
echo "To fail any test, you should use the exit 1 command;"
echo "To end a test early as a success, you should use the exit 0 command."

echo "Invoke your program with the \$CALCULATOR variable; an example is below"


# Test 01: divide by 0
if $CALCULATOR 2 / 0; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! An invalid run of the application (2 / 0) apparently succeeded?!'
  exit 1
fi

# Test 02: rounds down
output=$($CALCULATOR 1 / 2 | grep -o 0)
if [ "$output" -ne 0 ]; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! Apparently (1 / 2) did not return 0'
  exit 1
fi

# Test 03: divide by 0
if $CALCULATOR 2 / ; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! An invalid run of the application (2 / ) which has a missing argument apparently succeeded?!'
  exit 1
fi