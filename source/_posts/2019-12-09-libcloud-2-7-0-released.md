---
layout: post
title: Libcloud 2.7.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 2.7.0.

Among various smaller bug fixes, this release also includes a couple of big
new features.

Highlights include:

* Initial type annotations / hints support for the base Libcloud compute API.
* S3 driver class has been updated to support ``region`` argument in the same
  manner as other drivers which support multiple regions (no more messy class
  per region approach). For backward compatibility reasons, "class per region"
  approach will still be supported until the next major release.
* New ``start_node()`` and ``stop_node()`` method have been added to the base
  Libcloud compute API and the existing drivers which implement
  ``ex_start_node()`` and ``ex_stop_node()`` methods have been updated to
  implement those new methods. Old ``ex_`` methods will continue to work for
  backward compatibility reasons.

Full change log can be found at
<https://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-v2-7-0>.

### Dropping support for Python 2.7 and Python 3.4

Libcloud was among some of the other early larger Python projects which have
supported Python 2.x and Python 3.x simultaneously using a single code base
from 2011.

Over the years, the landscape has changed a lot. A lot of the users now use
Python 3 as a default and a lot of the popular Python projects now not only
support Python 3, but also make Python 3 the only supported Python version.

In addition to that, [Python 2.7 will not be maintained past January 2020][3].

We have decided to sign the [Python 3 statement][2] and drop support for Python
2.7 and Python 3.4 in the next major release (v3.0.0) which will coincide
with Python 2.7 EOL early next year.

This means that Libcloud v2.7.0 will be the last major release which still
supports Python 2.7 and 3.4.

The change itself is still work in progress. People who are interested in it
can check the following PR <https://github.com/apache/libcloud/pull/1377>.

#### How does this affect me?

If you still need to use Python 2.7 or Python 3.4 after Libcloud v3.0.0 is
out, you will be able to do that by utilizing one of the older Libcloud
releases which still supports that Python version.

All the new feature development and improvements will land in new release
which support Python >= 3.5 only, but we may still do a release in the
v2.7.x release series if a major bug or a security issue is found.

#### How does this affect the Libcloud development team?

Supporting Python 2.x and Python 3.x through a single code base was never
totally trivial.

This is especially true for our project which doesn't use ``six`` Python 2
/ 3 compatibility library, but uses custom glue / wrapper code for that.

There are multiple reasons why we didn't use ``six`` - one is that we still
needed to support Python 2.5 which is not supported by ``six`` and another
one is that we didn't want to introduce another dependency on the end user in
the days where Python packaging was still very much in the infancy.

Dropping support for Python 2.7 and Python 3.4 will allow us to streamline our
code and remove a lot of the code which is not needed anymore.

This will result in easier development and cleaner code.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==2.7.0
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==2.7.0
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v2.7.0/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/v2.7.0/changelog.html
[2]: https://python3statement.org/
[3]: https://pythonclock.org/
