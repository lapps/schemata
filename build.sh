#!/bin/bash

function schemata()
{
	for schema in `ls *.schema` ; do
		json=`echo $schema | sed "s/\./-/"`
		json=$json.json
		jsonc -p -d 4 -i $schema -o $json 
		echo "Compiled $schema --> $json"
	done
}

function examples()
{
	for text in ` ls *.txt`; do
		json=`echo $text | sed "s/\.txt$/.json/"`
		jsonc -p -i $text -o $json 
		echo "Compiled $text --> $json"
	done
}

while [ -n "$1" ] ; do
	case $1 in
		schemata)
			schemata
			;;
		examples)
			examples
			;;
		all)
			schemata
			examples
			;;
		*)
			echo "Invalid option $1"
			exit 1
			;;
	esac
	shift
done
echo "Done."



