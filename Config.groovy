def env = System.getenv()['environment'] ?: 'remote'
schema = [:]
if (env == 'keith') {		
	schema.url = 'file:/Users/suderman/Projects/LAPPS'
	schema.action = 'file:/Users/suderman/Projects/LAPPS'
	schema.token = "${schema.url}/token.json"
	schema.container = "${schema.url}/container.json"
	schema.lif = "${schema.url}/lif.json"
}
else {  // The default (remote) schemata.
	schema.url = 'http://vocab.lappsgrid.org/schema'
	schema.action = "${schema.url}/action"
	schema.token = "${schema.url}/token.json"
	schema.container = "${schema.url}/container.json"
	schema.lif = "${schema.url}/lif.json"
}

/*  DEAD CODE BELOW THIS POINT 

def environment = System.getenv()['environment'] ?: 'remote'
schemata = new ConfigSlurper(environment).parse('schemata.properties')
println "Token schema : ${schemata.token}"
println "LIF schema: ${schemata.lif}"
println schemata

load_config = { file ->
	def path = file ?: 'schemata.properties'
	def url = null
	if (path instanceof String) {
		url = new File(path).toURI().toURL()
	}
	else if (path instanceof File) {
		url = path.toURI().toURL()
	}
	else { 
		url = path
	}
	
	// Use the default (remote) environment if one has not been specified explicitly.
	def environment = System.getenv()['environment'] ?: 'remote'
	
	return new ConfigSlurper(environment).parse(url)
}
*/


