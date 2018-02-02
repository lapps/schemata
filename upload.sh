#!/bin/bash
set -e

if [ -z "$1" ] ; then
	echo "No version number specified."
	exit 1
fi
V=`echo $1 | sed 's/-.*$//'`
DEST=/home/www/anc/LAPPS/vocab/schema/$V
echo "Uploading to $DEST"

for schema in `ls schemata/*.json` ; do
	anc-put $schema $DEST
done
for schema in `ls *.schema` ; do
	anc-put $schema $DEST
done

