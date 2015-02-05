
JS=jsonc -d 4 -p
DEST=/home/www/anc/LAPPS/vocab/schema
SCHEMATA=lif-schema.json get-schema.json list-schema.json size-schema.json \
	execute-schema.json container-schema.json datasource-schema.json service-schema.json

#.schema .json:
#	jsonc -d 4 -p -i $@
	

help:
	@echo
	@echo "Goals"
	@echo
	@echo "       all : generates all JSON Schema"
	@echo "       lif : LIF schema"
	@echo "       get : DataSource GET requests"
	@echo "      list : DataSource LIST requests"
	@echo "      size : DataSource SIZE requests"
	@echo "   execute : WebService execute requests"
	@echo " container : a LIF container"
	@echo "datasource : metadata returned by DataSources"
	@echo "   service : metatdata returnd by WebServices"
	@echo "     clean : deletes all generated schemata"
	@echo "    upload : uploads schemata to the vocab web site"
	@echo			
			
all: lif get list size execute container datasource service

lif: 
	$(JS) -i $@.schema -o $@-schema.json

get: 
	$(JS) -i $@.schema -o $@-schema.json

list: 
	$(JS) -i $@.schema -o $@-schema.json

size: 
	$(JS) -i $@.schema -o $@-schema.json

execute:
	$(JS) -i $@.schema -o $@-schema.json

container:
	$(JS) -i $@.schema -o $@-schema.json

datasource:
	$(JS) -i $@.schema -o $@-schema.json

service: 
	$(JS) -i $@.schema -o $@-schema.json

clean:
	rm $(SCHEMATA)

upload: $(SCHEMATA)
	./upload.sh
	
#token: 
#	$(JS) -i token.schema -o token.json

#lif:
#	$(JS) -i lif.schema -o lif.json
	
#get:
#	$(JS) -i get.schema -o get.schema
	
#lif: lif.json

#get: get.schema

#list: list.schema

#size: size.schema

#getmetadata: getmetadata.schema

#container: container.schema

#execute: execute.schema

