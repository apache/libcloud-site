---
layout: post
title: Libcloud 0.14.1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.14.1!

This release includes some bug-fixes, improvements and new features.

### Release highlights

* New driver for [CloudSigma API 2.0][3]
* Improvements in the OpenStack driver
* Support for records with multiple values in the Route53 DNS driver
* Support for paging through zones and records in the Rackspace DNS driver

Full change log can be found at [here][2].

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==0.14.1
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==0.14.1
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html#libcloud-0-14-1>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v0.14.1/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][2].

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-users/201309.mbox/%3CCAJMHEmL4-Xuysx13z1EDwq-1K95eDyANqgY2tYGUT-MB5Sz4bQ%40mail.gmail.com%3E
[2]: https://libcloud.readthedocs.org/en//latest/changelog.html#changes-with-apache-libcloud-0-14-1
[3]: https://libcloud.readthedocs.org/en//latest/compute/drivers/cloudsigma.html
