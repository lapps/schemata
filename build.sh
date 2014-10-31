#!/bin/bash

for schema in `ls *.schema` ; do
	json=`echo $schema | sed "s/\./-/"`
	json=$json.json
	echo $json
done