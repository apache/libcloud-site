---
layout: post
title: Libcloud 2.6.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 2.6.0!

This release includes many new features and improvements. Highlights
include:

* [New compute driver for Gridscale.io provider][3]
* New compute driver for Maxihost provider
* Various improvements in the OpenStack compute driver
* [Support for ``https`` proxies][2]
* Various improvements in the Azure blobs storage driver
* Various improvements to the deploy node functionality and handling of
  unsupported SSH key types
* CloudFlare DNS driver has been updated to use CloudFlare API v4
* and much more.

Full change log can be found at
<http://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-2.6.0>.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==2.6.0
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==2.6.0
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v2.6.0/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v2.6.0/changelog.html
[2]: https://libcloud.readthedocs.io/en/latest/other/using-http-proxy.html
[3]: https://libcloud.readthedocs.io/en/latest/compute/drivers/gridscale.html
