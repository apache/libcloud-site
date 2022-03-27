---
layout: post
title: Libcloud 0.15.1 released
author: Sebastien Goasguen
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.15.1!

This release includes some bug-fixes and improvements.

### Release highlights

* Improvements in the EC2 driver
* Improvements in the CloudStack driver
* Improvements in the Openstack driver
* Fixes a possible race condition in the `deploy_node` method

Full change log can be found at [here][2].

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==0.15.1
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==0.15.1
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html#libcloud-0-15-1>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v0.15.1/>

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

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-dev/201407.mbox/%3c82E964C2-22F0-4D08-80AA-F3C8EC124B70@gmail.com%3e 
[2]: https://libcloud.readthedocs.org/en//latest/changelog.html#changes-with-apache-libcloud-0-15-1
