#!/bin/bash
set -eu

DEST=/home/www/anc/LAPPS/vocab/schema
JSON="lif container datasource service"
ACTION="get list size execute"

for schema in $JSON ; do
	anc-put $schema.schema $DEST
	anc-put $schema-schema.json $DEST
done

for schema in $ACTION ; do
	anc-put $schema.schema $DEST/action
	anc-put $schema-schema.json $DEST/action
done
