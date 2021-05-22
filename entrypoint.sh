#!/bin/sh -l

sh -c "flyctl $*"

ACTUAL_EXIT="$?"

exit $ACTUAL_EXIT