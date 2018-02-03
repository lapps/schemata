#!/bin/bash
set -e

#
# This script assumes that $USER has an account on anc.org with their
# ssh key installed so that passwordless SSH connections work.
#
if [ -z "$1" ] ; then
	echo "No version number specified."
	exit 1
fi
V=`echo $1 | sed 's/-.*$//'`
DEST=/home/www/anc/LAPPS/vocab/schema/$V
echo "Uploading to $DEST"

for schema in `ls schemata/*.json` ; do
	scp -P 22022 $schema $USER@anc.org:$DEST
done
for schema in `ls *.schema` ; do
	scp -P 22022 $schema $USER@anc.org:$DEST
done

