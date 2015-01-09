
JS=jsonc -d 4 -p
DEST=/home/www/anc/LAPPS/vocab/schema
SCHEMATA=token.json lif.json get.json list.json size.json getmetadata.json execute.json container.json

#.schema .json:
#	jsonc -d 4 -p -i $@
	
%.json: %.schema
	jsonc -d 4 -p -i $*.schema -o $*.json
		
all: token lif get list size getmetadata execute container

token: token.schema

lif: lif.schema

get: get.schema

list: list.schema

size: size.schema

getmetadata: getmetadata.schema

execute: execute.schema execute.json

container: container.schema

clean:
	rm $(SCHEMATA)

upload: $(SCHEMATA)
	anc-put lif.json $(DEST)
	anc-put token.json $(DEST)
	anc-put container.json $(DEST)
	anc-put get.json $(DEST)/action
	anc-put list.json $(DEST)/action
	anc-put size.json $(DEST)/action
	anc-put getmetadata.json $(DEST)/action
	anc-put execute.json $(DEST)/action
			
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

