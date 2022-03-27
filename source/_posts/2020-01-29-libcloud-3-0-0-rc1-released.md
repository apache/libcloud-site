---
layout: post
title: Libcloud 3.0.0-rc1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are happy to announce Libcloud v3.0.0-rc1.

This is the first release candidate for Libcloud v3.0.0 which includes many 
changes, the biggest one being dropping support for Python 2.7 and 
Python 3 < 3.5.

Since this is a first release which drops support for those Python versions,
we want to give our users some time to opt-in and test it and verify
everything works as expected, before we produce a stable v3.0.0 release.

Other highlights include:

* Type annotations for the base storage API
* Various improvements in the Azure Blobs driver
* New standard "prefix" keyword argument in the ``{list,iterate}_container_objects``
  methods
* 2 new compute drivers (KubeVirt, LXD)

If no major issues are found, this release candidate (with any other fixes
which accumulate in trunk until then) will become a stable v3.0.0 release
some time in the near future.

Keep in mind that this is a pre-release so it won't be installed by pip
by default when you run ``pip install apache-libcloud``.

To install it, you need to explicitly specify a version as shown in the
Download section below.

A list of all the changes can be found at
<https://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-3-0-0-rc1>.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install "apache-libcloud==3.0.0rc-1"
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade "apache-libcloud==3.0.0rc-1"
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v3.0.0-rc1/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.

Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v3.0.0-rc1/changelog.html
