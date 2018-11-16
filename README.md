LAPPS Schemata
========

JSON Schemata for JSON objects exchanged by LAPPS web services

These schema use the LAPPS Alternate Syntax (LAX), a simplified syntax for JSON schema, and must be compiled with the [schema compiler](http://downloads.lappsgrid.org/jsonc-latest.tgz).

Schemata may also be compiled with the online JSON compiler service.

```bash
curl -H "Content-type: text/plain" --data-binary @lif.schema https://api.lappsgrid.org/json-compiler
```

**Note** When using *curl* to POST the schema file the `--data-binary` option MUST be used as `-d` or `--data` strips newline characters.

## Schema files

1. **data.schema** <br/>
a LAPPS [Data](http://wiki.lappsgrid.org/org.lappsgrid.serialization/groovydoc/org/lappsgrid/serialization/Data.html) object.
1. **lif.schema** <br/>
the [LAPPS Interchange Format](http://wiki.lappsgrid.org/org.lappsgrid.serialization/groovydoc/org/lappsgrid/serialization/lif/Container.html) for objects exchanged by LAPPS web services. Available on the vocabulary website at http://vocab.lappsgrid.org/schema/lif-schema.
1. **metadata.schema** <br/>
the metadata returned by LAPPS [SOAP services](http://wiki.lappsgrid.org/org.lappsgrid.api/apidocs/org/lappsgrid/api/ProcessingService.html).
1. **datasource.schema** <br/>
the metdadata returned by LAPPS [DataSource](http://wiki.lappsgrid.org/org.lappsgrid.api/apidocs/org/lappsgrid/api/DataSource.html) services.

## Building

Use the `Makefile` to build one or more of the JSON schema files.  The output files will be written to the `schemata` directory.

### Make goals

* **all**<br/>
builds all the JSON Schema files. This is the default goal.
* **lif**<br/>
**data**<br/>
**metadata**<br/>
**datasource**<br/>
builds one of the schema files
* **upload**<br/>
uploads the generated schema files to the http://vocab.lappsgrid.org web site.
* **clean**<br/>
deletes all build artifacts

```
$> make clean
$> make
S> make upload
```

**NOTE**<br/>
For the `make upload` goal to succeed the $USER must have an account on the anc.org server with their ssh key installed to allow a passwordless SSH connection.

### Compile script

Use the `compile` script to compile a single schema files.  The `compile` script will use the [https://api.lappsgrid.org/json-compile](https://api.lappsgrid.org/json-compile) service if the `jsonc` command can not be found on the $PATH.

```
$> ./compile lif.schema
``` 
