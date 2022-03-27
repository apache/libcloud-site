---
layout: post
title: Libcloud 0.11.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

The Apache Libcloud team is pleased to announce the release of Libcloud
0.11.0!

Libcloud is a Python library that abstracts away the differences among
multiple cloud provider APIs. It allows users to manage cloud services
(servers, storage, load balancers, DNS) offered by many different providers
 through a single, unified and easy to use API.

### Release highlights

**General**

* Install test files when installing the library. Tests module can now be
  imported by doing something like this: "from libcloud import test"

**Compute**

* New standard API and methods for managing storage volumes. Base API
  consists of the following methods: create_volume, destroy_volume,
  attach_volume, detach_volume.
* New driver for KT UCloud (http://home.ucloud.olleh.com/main.kt) based
  on the CloudStack driver.
* New Gridspot driver with a basic list and destroy functionality.

**Bug fixes**

* Plenty of them, please see the CHANGES file.

For a full list of changes, please see the CHANGES file
<https://svn.apache.org/viewvc/libcloud/tags/0.11.0/CHANGES?revision=r1364892&view=markup>.

### Download

Libcloud 0.10.1 can be downloaded from http://libcloud.apache.org/downloads.html
or installed using pip:

{% highlight bash %}
pip install apache-libcloud
{% endhighlight %}

It is possible that the file hasn't been synced to all the mirrors yet. If
this is the case,
please use the main Apache mirror - http://www.apache.org/dist/libcloud.

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

{% highlight bash %}
pip install --upgrade apache-libcloud
{% endhighlight %}

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at http://libcloud.apache.org/upgrade-notes.html.

### Documentation

API documentation can be found at http://libcloud.apache.org/apidocs/0.11.1/

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or
test which reproduces your problem.

### Thanks

Thanks to everyone who contributed and made this release possible!
Full list of people who contributed to this release can be found in the
CHANGES file <https://svn.apache.org/viewvc/libcloud/tags/0.11.0/CHANGES?revision=r1364892&view=markup>.

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/www-announce/201207.mbox/%3CCAJMHEmLcSZi4bYmUaZtF_q=npc--DpVbTEH-Z+f0TCd2iteS-A@mail.gmail.com%3E
