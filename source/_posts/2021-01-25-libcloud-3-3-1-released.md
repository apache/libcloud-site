---
layout: post
title: Libcloud 3.3.1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are happy to announce Libcloud v3.3.1.

This release includes 2 bug fixes.

One of them fixes a regression in EC2 driver which was inadvertently
introduced in v3.3.1. That regression broke authentication for some
regions such as us-east-2 which utilize authentication algorithm
version 4.

A list of all the changes can be found at
<https://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-3.3.1>.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install "apache-libcloud==3.3.1"
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade "apache-libcloud==3.3.1"
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v3.3.1/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.

Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to [@olegrtecno][2] for reporting EC2 authentication issue and
[Veith Röthlingshöfer - @RunOrVeith][3] for reporting bug in Google Storage
driver which has also been fixed in this release.

Full list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v3.3.1/changelog.html
[2]: https://github.com/olegrtecno
[3]: https://github.com/RunOrVeith
