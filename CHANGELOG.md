# Change Log

All notable changes to the schemata will be documented in this file.

## Changes in discussion 

* Landing place for TCF ([#2](https://github.com/lapps/schemata/issues/2))
* `label` key for `annotation` is obsolete and will be dropped or renamed (for visualizers) later than 1.1.0

## Version 1.1.0  work in progress

### data-schema
a LAPPS Data object.

* Changed schema definition file name (`container.schema` -> `data.schema`) [213728](https://github.com/lapps/schemata/commit/21372890ef2321b01767dfb10f02809f8db5bd5b)
* `payload` is now string (previously referring to `lif.schema`) [441fb6](https://github.com/lapps/schemata/commit/441fb609397e3f76974d924241ae5ae0517fade5)

### lif-schema
the LAPPS Interchange Format for objects exchanged by LAPPS web services.


* Removed the `type` property from the `annotation` object. [1d7522](https://github.com/lapps/schemata/commit/1d75223f65b428815279f15c20dec3d2eab3e9db)
* Added `$schema` to the top level of `lif` object for schema version indicator  [213728](https://github.com/lapps/schemata/commit/21372890ef2321b01767dfb10f02809f8db5bd5b)
    * also see [org.lappsgrid.serialization/43](https://github.com/lapps/org.lappsgrid.serialization/issues/43) (version conflict issue)

### metadata-schema
the metadata returned by LAPPS SOAP services.

* Added `$schema` to the top level for schema version indicator (required) [213728](https://github.com/lapps/schemata/commit/21372890ef2321b01767dfb10f02809f8db5bd5b)
* Added `license` [213728](https://github.com/lapps/schemata/commit/21372890ef2321b01767dfb10f02809f8db5bd5b)
* `vendor` is now an URI (previously was string) [213728](https://github.com/lapps/schemata/commit/21372890ef2321b01767dfb10f02809f8db5bd5b)
* Added `licenseDesc` for restructure-d tool license information [21b312](https://github.com/lapps/schemata/commit/21b312f6760af9b6e3b112300d9fd934d622b811) ()


### datasource-schema
the metdadata returned by LAPPS DataSource services.

* Added `$schema` to the top level for schema version indicator  [4bcaf8](https://github.com/lapps/schemata/commit/4bcaf8d5672e0dd78c91b755d9d7cacac2321d05)
    * `$schema` is a required field (21372890ef2321b01767dfb10f02809f8db5bd5b)
* Added `licenseDesc` for restructure-d tool license information [ea3789](https://github.com/lapps/schemata/commit/ea3789f2f462fc04ad455af70803fa472b8a0c47)


## Version 1.0.0 - Everything before 2017-06-27

There wasn't really any versioning before 1.1.0 and changes were not explicitly logged.

For convenience we decided that everything before 1.1.0 is version 1.0.0.





