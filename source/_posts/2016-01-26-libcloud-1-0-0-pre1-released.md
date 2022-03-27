---
layout: post
title: Libcloud 1.0.0-pre1 released
author: Anthony Shaw
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 1.0.0-pre1.

This is a first pre-release in the 1.0.0 series which means it brings many new
features, improvements, bug-fixes, and DNS drivers.

### Release highlights

A full blog post on the new features in 1.0.0 can be found [here][2]

This includes:

* Introduction of Container-as-a-Service API drivers for [Kubernetes][6], [Docker][7], [Amazon ECS][8] and [Joyent Triton][9]
* Introduction of Backup-as-a-Service API
* Addition of South Korea region for Amazon EC2

Full change log can be found at [here][1].

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==1.0.0-pre1
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==1.0.0-pre1
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/latest/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/latest/changelog.html
[5]: http://cloud.dimensiondata.com/am/en/
[3]: http://libcloud.readthedocs.org/en/latest/dns/drivers/godaddy.html
[2]: http://libcloud.apache.org/blog/2016/01/20/libcloud-1.0-pre1.html
[6]: http://libcloud.readthedocs.org/en/latest/container/drivers/kubernetes.html
[7]: http://libcloud.readthedocs.org/en/latest/container/drivers/docker.html
[8]: http://libcloud.readthedocs.org/en/latest/container/drivers/ecs.html
[9]: http://libcloud.readthedocs.org/en/latest/container/drivers/joyent.html
