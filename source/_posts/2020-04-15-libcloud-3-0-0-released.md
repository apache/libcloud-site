---
layout: post
title: Libcloud 3.0.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are happy to announce Libcloud v3.0.0.

This is the first release in the v3.x.x series. It includes many changes
and improvements, the biggest one being dropping support for Python 2.7 and
Python 3 < 3.5.

If you still need to use Python 2.7 or Python 3 < 3.5 you can use Libcloud
v2.8.x release series which still supports those Python versions - keep in
mind though that this release series only includes bug fixes. All the new
features and improvements will land in the v3.x.x series.

Other highlights include:

* Type annotations for the base storage API
* Various improvements in the Azure Blobs driver
* New standard "prefix" keyword argument in the ``{list,iterate}_container_objects``
  methods
* 4 new compute drivers (KubeVirt, LXD, Kamatera, GiG G8)
* Various improvements to the ``deploy_node()`` functionality
* and much more

A list of all the changes can be found at
<https://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-3-0-0> and
<https://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-3-0-0-rc1>.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install "apache-libcloud==3.0.0"
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade "apache-libcloud==3.0.0"
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v3.0.0/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.

Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v3.0.0/changelog.html
