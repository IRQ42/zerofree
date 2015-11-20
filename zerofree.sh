#!/bin/bash
#############################################################################
# Zero free space on /home                                                  #
#############################################################################

# Clean up after this script exits
cleanup() {
	rm -f $TMPFILE
  sync
}

trap cleanup EXIT

# Create temporary file to zero-fill
export TMPDIR='/home'
TEMPLATE='0.tmp.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
TMPFILE=$(mktemp -t $TEMPLATE)

# Fill with zeros until exhausting free space
cat /dev/zero >$TMPFILE
sync

exit
