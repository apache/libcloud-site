---
layout: post
title: Libcloud 0.20.1 released
author: Eric Johnson
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.20.1.

This is a bug-fix release in the 0.20 series.

### Release highlights

* Allow for old and new style service accounts for GCE driver
* Fix syntax error with DimensionDataStatus object
* Fix bug in public IP addition command for DimensionData driver
* Fix error with proxy_url with vCloud Compute driver.
* Fix with hasattr for Rackspace DNS driver.

Full change log can be found at [here][1].

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==0.20.1
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==0.20.1
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
