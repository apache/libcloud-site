---
layout: post
title: Libcloud 2.8.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 2.8.0.

This release includes various changes, most notable ones being:

* Distribution now includes ``py.typed`` file which signals mypy that
  this package contains type annotations (currently only for the
  base compute API).
* Fix wheel metadata. There was a bug where conditional dependencies
  were not specified correctly so it would try to install ``typing``
  and ``enum34`` dependency on Python versions where there is not needed.
* Fix ``get_driver()`` bug / regression not working if the ``provider``
  argument was a string and not a Provider ENUM.

Full change log can be found at
<https://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-v2-8-0>.

### Dropping support for Python 2.7 and Python 3.4

The plan was for v2.7.0 to be the last major release before v3.0.0 which
drops support for Python 2.7 and Python 3.4, but this has changed since
v2.7.0 introduced some small regressions / bugs which needed to be fixed.

If no major issues are found in this release, this will be the
last release before v3.0.0 which drops support for those Python
versions.

For more information on dropping support for Python 2.7 and Python 3.4, please
refer to the v2.7.0 release announcement
<https://libcloud.apache.org/blog/2019/12/09/libcloud-2-7-0-released.html>.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install "apache-libcloud==2.8.0"
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade "apache-libcloud==2.8.0"
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v2.8.0/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v2.8.0/changelog.html
[2]: https://python3statement.org/
[3]: https://pythonclock.org/
