---
layout: post
title: Libcloud 1.2.1 released
author: Anthony Shaw
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 1.2.1.

This release brings many new features, improvements, bug-fixes, and drivers.

## Release highlights

### Changes in Apache Libcloud 1.2.1

* Fix issue enabling backups on Dimension Data driver

### Changes in Apache Libcloud 1.2.0

#### General

* Fix caching of auth tokens in the Google Compute Engine drivers. Now we make
  sure that the file is truncated before writing a new token. Not truncating the
  file would cause issues if the new token is shorted then the existing one
  which is cached in the file.

#### Compute

* Fix image undeprecation in GCE
* Added Managed Instance Groups in GCE
* Allow undeprecation of an image in GCE
* BUGFIX Values with wildcards failed signature validation in cloudstack
* Added StorageState-Migrating to the cloudstack driver.
* Update copy image logic to match create image in GCE driver.
* Removed HD attribute from the Abiquo compute driver to support the 3.4 API
* Add image and size details to list_nodes response in Dimension Data driver
* Add support for changing VM admin password in VMware driver
* Add Barcelona (Spain) region to the Aurora Compute driver.
* Various improvements in the libvirt driver.

#### Load balancer

* Add support for temporary IAM role credentials (token) to the AWS ELB driver.

#### DNS

* Updated the 'extra' parameter in update_record() to be optional in aurora driver
* Support for iterating over records and zones in the Aurora DNS driver
* Add support for DS, PTR, SSFHFP and TLSA record type to the Aurora DNS driver.

#### Container

* Add network mode and labels when creating containers within docker driver

#### Storage

* Fix authentication issue in S3/China region, disabled multipart uploads as
  not supported by region.

Full change log can be found at [here][1].

### Special thank you

I would like to wish a special thank you to all of our community contributors
for their ongoing support to the project.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==1.2.1
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==1.2.1
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/latest/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/latest/changelog.html
