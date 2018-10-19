# Change Log

All notable changes to the schemata will be documented in this file.

## Changes in discussion 

* Landing place for TCF ([#2](https://github.com/lapps/schemata/issues/2))
* `label` key for `annotation` is obsolete and will be dropped or renamed (for visualizers) later than 1.1.0

## Version 1.1.0  work in progress

### data-schema
a LAPPS Data object.

* Changed schema definition file name (`container.schema` -> `data.schema`) [schemata@213728](https://github.com/lapps/schemata/commit/21372890ef2321b01767dfb10f02809f8db5bd5b#diff-54f366c76865169bde47d87606e93843)
* `payload` is now string (previously referring to `lif.schema`) [schemata@441fb6](https://github.com/lapps/schemata/commit/441fb609397e3f76974d924241ae5ae0517fade5#diff-54f366c76865169bde47d87606e93843R13)

### lif-schema
the LAPPS Interchange Format for objects exchanged by LAPPS web services.


* Removed the `type` property from the `annotation` object. [schemata@1d7522](https://github.com/lapps/schemata/commit/1d75223f65b428815279f15c20dec3d2eab3e9db#diff-e171794aeccf8b0c40e9a9bea4f64c2dL82) and [schemata@213728](https://github.com/lapps/schemata/commit/21372890ef2321b01767dfb10f02809f8db5bd5b#diff-e171794aeccf8b0c40e9a9bea4f64c2dL82) duplicate commits? 
* Added `id` to the `view` item. [schemata@7adf1b](https://github.com/lapps/schemata/commit/7adf1b143115cac098b48b13de84ddb6d392aa59#diff-e171794aeccf8b0c40e9a9bea4f64c2dR62)
* `id` of the `view` is a required field. [schemata@7adf1b](https://github.com/lapps/schemata/commit/7adf1b143115cac098b48b13de84ddb6d392aa59#diff-e171794aeccf8b0c40e9a9bea4f64c2dR67)
* Added `$schema` to the top level of `lif` object for schema version indicator  [schemata@213728](https://github.com/lapps/schemata/commit/21372890ef2321b01767dfb10f02809f8db5bd5b#diff-e171794aeccf8b0c40e9a9bea4f64c2dR16)
    * also see [org.lappsgrid.serialization/43](https://github.com/lapps/org.lappsgrid.serialization/issues/43) (version conflict issue)
    * this is the main change in 1.1.0 and causing problems with backward compat. See this TCF-converter issue, [converter-issues#3](https://github.com/lapps-clarin/converter-issues/issues/3)

### metadata-schema
the metadata returned by LAPPS SOAP services.

* Added `$schema` to the top level for schema version indicator [schemata@4bcaf8](https://github.com/lapps/schemata/commit/4bcaf8d5672e0dd78c91b755d9d7cacac2321d05#diff-ce7d800f1e21c5e7aafe5eeb52137ddbR39)
* Added `license` [schemata@4bcaf8](https://github.com/lapps/schemata/commit/4bcaf8d5672e0dd78c91b755d9d7cacac2321d05#diff-ce7d800f1e21c5e7aafe5eeb52137ddbR40)
* `vendor` is now an URI (previously was string) [schemata@4bcaf8](https://github.com/lapps/schemata/commit/4bcaf8d5672e0dd78c91b755d9d7cacac2321d05#diff-ce7d800f1e21c5e7aafe5eeb52137ddbR45)
* Changed schema definition file name (`service.schema` -> `metadata.schema`) [schemata@213728](https://github.com/lapps/schemata/commit/21372890ef2321b01767dfb10f02809f8db5bd5b#diff-2a24b82a760b8597098c2158a3ca8c1f)
* `$schema` is a required field [schemata@213728](https://github.com/lapps/schemata/commit/21372890ef2321b01767dfb10f02809f8db5bd5b#diff-2a24b82a760b8597098c2158a3ca8c1fR50)
* Added `licenseDesc` for restructure-d tool license information [schemata@21b312](https://github.com/lapps/schemata/commit/21b312f6760af9b6e3b112300d9fd934d622b811#diff-2a24b82a760b8597098c2158a3ca8c1fR43)

### datasource-schema
the metdadata returned by LAPPS DataSource services.

* Added `$schema` to the top level for schema version indicator [schemata@4bcaf8](https://github.com/lapps/schemata/commit/4bcaf8d5672e0dd78c91b755d9d7cacac2321d05#diff-c1699eaa601a26d77bee11ae921df61cR12)
* Added `language` to the top level for schema version indicator [schemata@4bcaf8](https://github.com/lapps/schemata/commit/4bcaf8d5672e0dd78c91b755d9d7cacac2321d05#diff-c1699eaa601a26d77bee11ae921df61cR20)
* Added `encoding` to the top level for schema version indicator [schemata@4bcaf8](https://github.com/lapps/schemata/commit/4bcaf8d5672e0dd78c91b755d9d7cacac2321d05#diff-c1699eaa601a26d77bee11ae921df61cR21)
* `$schema` is a required field [schemata@213728](https://github.com/lapps/schemata/commit/21372890ef2321b01767dfb10f02809f8db5bd5b#diff-c1699eaa601a26d77bee11ae921df61cR31)
* Added `licenseDesc` for restructure-d tool license information [schemata@ea3789](https://github.com/lapps/schemata/commit/ea3789f2f462fc04ad455af70803fa472b8a0c47)


## Version 1.0.0 - Everything before 2017-06-27

There wasn't really any versioning before 1.1.0 and changes were not explicitly logged.

For convenience we decided that everything before 1.1.0 is version 1.0.0.

