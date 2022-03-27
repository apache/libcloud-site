---
layout: post
title: Libcloud 0.6.0-beta1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

Libcloud team is pleased to announce the release of Libcloud 0.6.1!

This release represents a big milestone for us and includes many
improvements and new drivers, but the most important thing is a brand new
DNS API.

DNS API allows users to manage DNS service provided by many different
providers. This release includes a driver for Linode DNS (
http://www.linode.com/features.cfm), Zerigo DNS (http://www.zerigo.com/)
and Rackspace Cloud DNS (
http://www.rackspace.com/cloud/cloud_hosting_products/dns/). In the future
we also plan to expand it (hopefully with your help) and add new drivers
for providers such as Amazon and others.

Other notable changes, bug-fixes and improvements:

**Documentation**

* New documentation which is available at http://libcloud.apache.org/docs/

**General**

* SSL certificate validation is now enabled by default. If no CA
certificate files are found on startup, an exception is thrown.

**Compute**

* New driver for Ninefold.com (also a first driver for public Australian
cloud provider in Libcloud)
* Support for OpenStack 1.1 API and many other improvements in the
OpenStack driver
* Linode driver now support a new Japan location
* Support for deployment using an SSH key
* Amazon EC2 driver now supports deploy functionality using an SSH key

**Storage**

* New driver for Google storage (http://code.google.com/apis/storage/)
* New driver for Ninefold.com storage (http://ninefold.com/cloud-storage/)

**Load Balancer**

* New driver for ninefold.com (
https://ninefold.com/support/display/SPT/Load+Balancing)
* Rackspace driver now also supports UK location

Any many other improvements and bug fixes!

For a full list of changes, please see the CHANGES file
<https://svn.apache.org/viewvc/libcloud/trunk/CHANGES?revision=1198753&view=markup>

### Download

Libcloud 0.6.1 can be downloaded from
http://libcloud.apache.org/downloads.html or installed using pip:

{% highlight bash %}
pip install apache-libcloud
{% endhighlight %}

It is possible that the file hasn't been synced to all the mirrors yet. If
this is the case, please use the main Apache mirror -
http://www.apache.org/dist/libcloud

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

{% highlight bash %}
pip install --upgrade apache-libcloud
{% endhighlight %}

### Upgrade notes

A page which describes backward incompatible or semi-incompatible changes
and how to preserve the old behavior when this is possible can be found at
http://libcloud.apache.org/upgrade-notes-0-6.html.

### Documentation

API documentation can be found at http://libcloud.apache.org/apidocs/0.6.1/.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or test which reproduces your problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the CHANGES
file
<https://svn.apache.org/viewvc/libcloud/trunk/CHANGES?revision=1198753&view=markup>.

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-users/201111.mbox/%3CCAJMHEm+8XX704mSY4qw4P0YSBjGK=0SWCKjzSHBe8sLD__2UnA@mail.gmail.com%3E
