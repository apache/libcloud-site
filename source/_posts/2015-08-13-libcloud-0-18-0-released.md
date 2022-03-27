---
layout: post
title: Libcloud 0.18.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.18.0.

This is a first release in the 0.18 series which means it brings many new
features, improvements and bug-fixes.

### Release highlights

* New compute driver for [Microsoft Azure Virtual Machines service][3]
* New compute driver for [RunAbove compute service][4]
* New compute driver for [Cloudwatt compute service][5]
* New compute driver for [Packet.net][6]
* New compute driver for [OnApp Cloud service][7]
* New compute driver for [Dimension Data compute service][8]
* New storage driver for [AuroraObjects service][9]
* New load balancer driver for [Softlayer loadbalancing service][10]
* New DNS driver for [DigitalOcean DNS service][11]
* Support for DigitalOcean API v2 which is not used by default.
* Support for AWS Signature version 4 and new AWS Frankfurt, Germany region
* Support for retrying failed HTTP requests (disabled by default, to enable it, 
  set ``LIBCLOUD_RETRY_FAILED_HTTP_REQUESTS`` environment variable to True)
* Many improvements in the HostVirtual compute driver
* and much more!

Full change log can be found at [here][2].

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==0.18.0
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==0.18.0
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v0.18.0/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][2].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-dev/201407.mbox/%3c82E964C2-22F0-4D08-80AA-F3C8EC124B70@gmail.com%3e
[2]: https://libcloud.readthedocs.org/en/latest/changelog.html#changes-with-apache-libcloud-0-18-0
[3]: https://azure.microsoft.com/en-us/services/virtual-machines/
[4]: https://www.runabove.com/index.xml
[5]: https://www.cloudwatt.com/en/
[6]: https://www.packet.net/
[7]: https://onapp.com/platform/onapp-cloud
[8]: http://cloud.dimensiondata.com/am/en/
[9]: https://www.pcextreme.nl/en/aurora/objects
[10]: https://www.softlayer.com/load-balancing
[11]: https://www.digitalocean.com/
