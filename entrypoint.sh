#!/bin/bash
set -ex
./ossutil config -e $ENDPOINT -i $ACCESS_KEY_ID -k $ACCESS_KEY_SECRET
./ossutil $@