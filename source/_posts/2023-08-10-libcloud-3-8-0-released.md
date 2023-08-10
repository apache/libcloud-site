---
layout: post
title: Libcloud 3.8.0 Released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are happy to announce Libcloud v3.8.0.

This release includes new features, improvements, and bug fixes.

Highlights include:

- Performance improvements in the storage drivers
- Removal of 18 drivers for providers that are no longer active (they went
  out of business, have been acquired, or similar).

A list of all the changes can be found at
<https://libcloud.readthedocs.io/en/latest/changelog.html#changes-in-apache-libcloud-3.8.0>.

### Development-Related Changes (developers only)

In addition to the end-user visible changes, we have made various changes to our
development process and practices to better follow and align with modern
Python development and packaging best practices.

- Tooling (pylint, mypy, bandit, isort, black, etc.) config options have been
  migrated into pyproject.yaml file.
- Package setup and build-related metadata have been migrated from setup.py
  and setup.cfg to pyproject.toml.
- The unsafe "setup.py test" wrapper command has been removed in favor of
  invoking pytest directly.
- The "build" PyPi package is now used for creating release artifacts (sdist, wheel)
  in an isolated virtual environment.

### Download

The release can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install "apache-libcloud==3.8.0"
</pre>

### Upgrading

If you have installed Libcloud using pip, you can also use it to upgrade:

<pre>
pip install --upgrade "apache-libcloud==3.8.0"
</pre>

### Upgrade notes

A page that describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v3.8.0/>

### Bugs/Issues

If you find any bug or issue, please report it on our issue tracker
<https://github.com/apache/libcloud/issues>.

Don't forget to attach an example and/or test that reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! The full
list of people who contributed to this release can be found in the
[CHANGES file][1].

Special thanks to Anthony Monthe - @ZuluPro for contributing driver removal /
clean up change.

[1]: https://libcloud.readthedocs.org/en/v3.8.0/changelog.html
