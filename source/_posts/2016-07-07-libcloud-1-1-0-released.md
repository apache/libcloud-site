---
layout: post
title: Libcloud 1.1.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 1.1.0.

This is a first release after v1.0.0. It includes various improvements
and bug-fixes.

### Release highlights

* Support for automatic SNI (SSL extension) using the hostname
  supplied to connect to.
* Various improvements in the libvirt driver
* Various improvements in the DimensionData driver
* Various improvements in the Aliyun driver

Full change log can be found at [here][1].

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==1.1.0
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==1.1.0
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v1.1.0/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.io/en/v1.1.0/changelog.html#changes-with-apache-libcloud-1-1-0
