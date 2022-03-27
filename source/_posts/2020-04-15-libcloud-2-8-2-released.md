---
layout: post
title: Libcloud 2.8.2 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are happy to announce Libcloud v2.8.2.

This release includes a couple of bug fixes and small improvements for
the ``deploy_node()`` functionality.

Keep in mind that v2.8.x is a bug-fix only release series. All the other
new features and improvements are available in v3.0.0 release which
drops support for Python < 3.5.

A list of all the changes can be found at
<https://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-v2.8.2>.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install "apache-libcloud==2.8.2"
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade "apache-libcloud==2.8.2"
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v2.8.2/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.

Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v2.8.2/changelog.html
