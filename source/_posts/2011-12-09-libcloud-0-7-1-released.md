---
layout: post
title: Libcloud 0.7.1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

Libcloud team is pleased to announce the release of Libcloud 0.7.1!

This release represents another big milestone for us and introduces a
support for Python 3!

Other notable changes:

* New Las Vegas location for the CloudSigma provider
* Improvements to the OpenStack driver
* Improvements to the OpenNebula driver
* Support for Amazon EC2 new "Cluster Compute Eight Extra Large" instance
size

This release also removes old, deprecated (pre-0.5) paths. If you still
haven't updated your code you need to do it now otherwise it won't work
with 0.7.1 and future releases.

Script which can help you with the migration from the old style paths to
the new ones can be found at
http://libcloud.apache.org/upgrade-notes-0-7.html.

For a full list of changes, please see the CHANGES file
<https://svn.apache.org/viewvc/libcloud/tags/0.7.1/CHANGES?revision=1210679&view=markup>.

### Download

Libcloud 0.7.1 can be downloaded from
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
http://libcloud.apache.org/upgrade-notes-0-7.html.

### Documentation

API documentation can be found at http://libcloud.apache.org/apidocs/0.7.1/.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker <
https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or test which reproduces your problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the CHANGES
file <https://svn.apache.org/viewvc/libcloud/tags/0.7.1/CHANGES?revision=1210679&view=markup>.

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-users/201112.mbox/%3CCAJMHEm+qKuSarmvQZ4H1PVUkv6L3vssjQEHs+3MCtSJ9hfBwOw@mail.gmail.com%3E
