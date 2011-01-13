#!/usr/bin/env bash
TAG=$1
VER=$(echo $TAG|sed 's/^v//')
if test -z "$VER"
then
	echo "Usage: $0 <upstream tag>"
	exit 1
fi
BASE=ilkkas-git-helpers
PFX=$BASE_$VER/
TAR=$BASE_$VER.orig.tar.gz
git archive --prefix=$PFX $TAG|gzip -9 > $TAR
pristine-tar commit $TAR $TAG
