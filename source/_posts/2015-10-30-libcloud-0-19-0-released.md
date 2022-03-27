---
layout: post
title: Libcloud 0.19.0 released
author: Eric Johnson
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.19.0.

This is a first release in the 0.19 series which means it brings many new
features, improvements, bug-fixes, and DNS drivers.

### Release highlights

* New load balancer driver for [Dimension Data][2]
* New DNS driver for [AuroraDNS][3]
* New DNS driver for [WorldWideDNS][4]
* New DNS driver for [DNSimple][5]
* New DNS driver for [PointDNS][6]
* New DNS driver for [Vult DNS][7]
* New DNS driver for [Liquidweb DNS][8]
* New DNS driver for [Zonomi DNS][9]
* New DNS driver for [Durable DNS][10]
* Added volume management methods and more to [RunAbove compute service][11]
* Added new South America East region to [S3 storage driver][12]
* Many more improvements and API v2.0 added to the [Dimension Data compute driver][13]
* New API v1 support for [Google Cloud DNS][14]
* Many improvements in the HostVirtual compute driver
* and much more!

Full change log can be found at [here][1].

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==0.19.0
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==0.19.0
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v0.19.0/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/latest/changelog.html#changes-with-apache-libcloud-0-19-0
[2]: http://cloud.dimensiondata.com/am/en/
[3]: https://www.pcextreme.com/aurora/dns
[4]: http://www.worldwidedns.net/home.asp
[5]: https://dnsimple.com/
[6]: https://pointhq.com/
[7]: https://www.vultr.com/
[8]: http://www.liquidweb.com/
[9]: http://zonomi.com/
[10]: https://durabledns.com/
[11]: https://www.runabove.com/index.xml
[12]: https://aws.amazon.com/s3/
[13]: http://cloud.dimensiondata.com/am/en/services/public-cloud/cloud-networks
[14]: https://cloud.google.com/dns/
