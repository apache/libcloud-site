---
layout: post
title: Libcloud 3.6.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are happy to announce Libcloud v3.6.0.

This release includes new features, improvements and bug fixes.

Highlights include:

- Improvements in the Kuberneter container driver
- Improvements in the OpenStack compute driver (support for micro versions,
  etc.)
- Compatibility / support for paramiko >= 2.9.0 including backward
  compatibility layer for backward incompatible changes in paramiko related
  to old OpenSSH versions. More information on that available in the Upgrade
  Notes -
  <https://libcloud.readthedocs.io/en/latest/upgrade_notes.html#libcloud-3-6-0>
- Support for authenticating using Azure AD credentials in the Azure Blobs
  storage driver

A list of all the changes can be found at
<https://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-3.6.0>.

### Note on Python 3.5 support

Python 3.5 support has been dropped in Libcloud v3.5.0.

Python 3.5 has been EOL and non-supported for more than a year now
(<https://endoflife.date/python>) and a lot of libraries (including some we
depend on) have already dropped support for it.

Last release which still supports Python 3.5 is Libcloud v3.4.1.

### Note on code style change (developers only)

To make formating and styling in our code base more consistent, we have
re-formatted all the code with black (<https://github.com/psf/black>) and we will
automatically enforce black code style (<https://black.readthedocs.io/en/stable/>)
for all the new code going forward.

This should make it easier to contribute and read the code since all the code
will be using the same style.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install "apache-libcloud==3.6.0"
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade "apache-libcloud==3.6.0"
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v3.6.0/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.

Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v3.6.0/changelog.html
