---
layout: post
title: Libcloud 2.2.1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 2.2.1!

This is a first patch release in the 2.2.x series and as such, it
includes some bug fixes and improvements.

The most important one of them fixes an installation of Libcloud 2.2.0
failing on some operating-system and file-system combinations (e.g.
ecryptfs layered on top of ext3/4) which don't support file names longer
than 143 characters.

In addition to that, it also includes performance improvement for the
deploy functionality available to the compute drivers. Now the deploy
scripts which produce a lot of output should finish a lot faster.

Full change log can be found at
<http://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-2-2-1>.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==2.2.1
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==2.2.1
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v2.2.1/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v2.2.1/changelog.html
