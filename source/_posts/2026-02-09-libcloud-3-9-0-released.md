---
layout: post
title: Libcloud 3.9.0 Released
author: Miguel Caballer
tags:
  - news
  - release announcement
---

We are happy to announce Libcloud v3.9.0.

This release includes new features, improvements, and bug fixes.

Highlights include:

- Improvements in the Azure ARM compute driver
- Improvements in the Equinix Metal compute driver
- Improvements in the Linode compute driver
- Improvements in the KubeVirt compute driver
- Improvements in the Amazon S3 storage driver
- Amazon EC2: Updated pricing and instance sizing data.
- Dropped support for Python 3.7, 3.8 and 3.9, as they are now EOL.
- Added support for Python 3.12 (stable) and 3.13.

A list of all the changes can be found at
<https://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-9.0>.

### Development-Related Changes (developers only)

In addition to the end-user visible changes, we have made various changes to our
development process and practices to better follow and align with modern
Python development and packaging best practices.

- Removed the unused `setup.py` file to reduce confusion since the
project fully migrated to `pyproject.toml`.
- Made `libcloud.common.types.Type` hashable, allowing direct use in set
membership checks.
- Updated build and packaging tools to fix issues reported by downstream
users.
- Adopt uv tool for dependency management.

### Download

The release can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install "apache-libcloud==3.9.0"
</pre>

### Upgrading

If you have installed Libcloud using pip, you can also use it to upgrade:

<pre>
pip install --upgrade "apache-libcloud==3.9.0"
</pre>

### Upgrade notes

A page that describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v3.9.0/>

### Bugs/Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.

Don't forget to attach an example and/or test that reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! The full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v3.9.0/changelog.html
