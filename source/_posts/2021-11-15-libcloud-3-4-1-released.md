---
layout: post
title: Libcloud 3.4.1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are happy to announce Libcloud v3.4.1.

This is a bug fix release which fixes an installation bug that was inadvertently
introduced in v3.4.0.

That bug broke installation under Python 3.5 and it also prevented Libcloud
from being installed inside the same (virtual) environment where older version
of the requests library was already installed or where some other dependency
depends on older version of the requests library.

### Note on Python 3.5 support

Libcloud v3.4.x will be the last release series which still supports Python
3.5.

Python 3.5 has been EOL and non-supported for more than a year
(<https://endoflife.date/python>) now and a lot of libraries (including some we
depend on) have already dropped support for it.

This is making it increasingly hard for us to still support Python 3.5 since
it requires a bunch of edge cases in workarounds in our code and build system.

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
pip install "apache-libcloud==3.4.1"
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade "apache-libcloud==3.4.1"
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v3.4.1/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.

Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v3.4.1/changelog.html
[2]: https://github.com/olegrtecno
[3]: https://github.com/RunOrVeith
