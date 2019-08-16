#!/bin/bash
set -ex
/usr/bin/ossutil config -e $ENDPOINT -i $ACCESS_KEY_ID -k $ACCESS_KEY_SECRET
/usr/bin/ossutil $@
