LAPPS Schemata
========

JSON Schemata for JSON objects exchanged by LAPPS web services

These schema use the LAPPS Alternate Syntax (LAX), a simplified syntax for JSON schema, and must be compiled with the schema compiler at https://github.com/oanc/org.anc.json.schema-compiler

Schemata may also be compiled with the online schema compiler service.

```bash
curl -H "Content-type: text/plain" --data-binary @lif.schema http://grid.anc.org:9080/json-compiler
```

**Note** When using *curl* to POST the data the `--data-binary` must be used as using `-d` or `--data` will strip newline characters in the file.

There are currently two schemata:

1. **lif.schema** <br/>
the LAPPS Interchange Format for objects exchanged by LAPPS web services.
2. **metadata.schema** <br/>
the LAPPS Metadata Format for objects returned by calls to `getMetadata()`.
