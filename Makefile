
JS=jsonc -d 4 -p

#.schema .json:
#	jsonc -d 4 -p -i $@
	
%.schema %.json:
	jsonc -d 4 -p -i $*.schema -o $*.json
	
	
all: token lif get

token: token.json

lif: lif.json

get: get.json

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

