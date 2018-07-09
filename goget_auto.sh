#!/bin/bash
#WORKDIR="[PLEASE MAKE SURE THE WORKDIR]"
WORKDIR="./"
$(cat $WORKDIR/main.go | xargs 2> /dev/null | sed -e 's/^package.*.import (//g' -e 's/ ).*//g' -e 's/ /\n/g' |egrep "^github" | awk '{print "go get",$1}')
