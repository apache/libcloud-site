---
layout: post
title: Libcloud 3.9.1 Released
author: Miguel Caballer
tags:
  - news
  - release announcement
---

We are happy to announce Libcloud v3.9.1.

This release includes new features, improvements, and bug fixes.

Highlights include:

- Improvements in the Azure ARM compute driver
- Improvements in the OpenStack compute driver
- Improvements in the VSphere compute driver
- Improvements in the GCP compute driver
- Improvements in the RcodeZero compute driver
- Improvements in the Cloudflare dns driver
- Amazon EC2: Updated pricing and instance sizing data.
- Added support for Python 3.14.

A list of all the changes can be found at
<https://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-3-9-1>.

### Development-Related Changes (developers only)

In addition to the end-user visible changes, we have made various changes to our
development process and practices to better follow and align with modern
Python development and packaging best practices.

- Upgraded `pytest` to v8.1, fixing race conditions and cross-test pollution.
- Added workarounds for compatibility with `pytest >= 8.2`. 

### Download

The release can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install "apache-libcloud==3.9.1"
</pre>

### Upgrading

If you have installed Libcloud using pip, you can also use it to upgrade:

<pre>
pip install --upgrade "apache-libcloud==3.9.1"
</pre>

### Upgrade notes

A page that describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v3.9.1/>

### Bugs/Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.

Don't forget to attach an example and/or test that reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! The full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v3.9.1/changelog.html
