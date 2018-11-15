VERSION=$(shell cat VERSION)
CC=jsonc -d 4 -p
DEST=/home/www/anc/LAPPS/vocab/schema

%.json : %.schema
	if [ ! -e schemata ] ; then mkdir schemata ; fi
	$(CC) -o ./schemata/$*-schema.json $<

all: lif data metadata datasource
	
lif: lif.json

data: data.json

metadata: metadata.json

datasource: datasource.json

upload: 
	./upload.sh $(VERSION)

.PHONY: clean
clean:
	if [ -e schemata ] ; then rm -rf schemata ; fi

help:
	@echo
	@echo "Goals"
	@echo
	@echo "       all : generates all JSON Schema (Default)"
	@echo "       lif : a LIF Container"
	@echo "      data : a LAPPS Data object"
	@echo "datasource : metadata returned by DataSources"
	@echo "  metadata : metatdata returnd by WebServices"
	@echo "     clean : deletes all generated schemata"
	@echo "    upload : uploads schemata to the vocab web site"
	@echo			
			
