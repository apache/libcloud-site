---
layout: post
title: Libcloud 0.20.0 released
author: Anthony Shaw
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.20.0.

This is a first release in the 0.20 series which means it brings many new
features, improvements, bug-fixes, and DNS drivers.

### Release highlights

* New DNS driver for [GoDaddy][3]
* New DNS driver for [CloudFlare DNS][4]
* Many more improvements and API v2.1 support for the [Dimension Data compute driver][5]
* Support for adding and configuring PTR (reverse DNS) record in RackSpace DNS driver
* Support for preemptable instances in Google Compute driver
* Add new eu-west-2 & us-east-2 regions to the OUTSCALE_INC & OUTSCALE_SAS drivers
* Added C4, M4 instance types in Amazon EC2 driver
* Add support for multiple regions in Aurora compute driver
* GoogleStorageDriver can now use either our S3 authentication or other Google Cloud Platform OAuth2 authentication methods.
* Removed DreamHosts Compute Driver, DreamHosts users will now use the OpenStack Node driver since DreamHosts are OpenStack API compliant
* and much more!

Full change log can be found at [here][1].

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==0.20.0
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==0.20.0
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

[1]: https://libcloud.readthedocs.org/en/latest/changelog.html#changes-with-apache-libcloud-0-20-0
[5]: http://cloud.dimensiondata.com/am/en/
[3]: http://libcloud.readthedocs.org/en/latest/dns/drivers/godaddy.html
[4]: https://www.cloudflare.com/dns/
