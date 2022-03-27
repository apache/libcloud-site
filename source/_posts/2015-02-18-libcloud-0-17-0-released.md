---
layout: post
title: Libcloud 0.17.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.17.0.

This is a first release in the 0.17 series which means it brings many
new features, improvements and bug-fixes.

### Release highlights

* New driver for [Softlayer DNS service][3]
* New driver for [Google Compute Engine load balancing service][4]
* Many improvements and new features in the Google Compute Engine Driver
* Support for new ``us-east-2`` and ``us-east-3`` region in the [Joyent][5]
  compute driver
* Additional functionality in the CloudStack compute driver
* Support for [new regions][6] in the CloudSigma compute driver

Full change log can be found at [here][2].

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==0.17.0
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==0.17.0
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v0.17.0/>

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
[2]: https://libcloud.readthedocs.org/en/latest/changelog.html#changes-with-apache-libcloud-0-17-0
[3]: http://sldn.softlayer.com/reference/services/SoftLayer_Dns_Domain/
[4]: https://cloud.google.com/compute/docs/load-balancing/
[5]: https://www.joyent.com/public-cloud
[6]: https://www.cloudsigma.com/2014/08/20/cloudsigma-expands-public-cloud-footprint-with-drfortress-in-hawaii/
