---
layout: post
title: Libcloud 0.8.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

Libcloud team is pleased to announce the release of Libcloud 0.8.0!

Release highlights:

* Support for handling compressed (gzip, deflate) responses
* Support for new Amazon EC2 location - South America (Sao Paulo)

Other notable changes:

* Many improvements and additions of extension methods in the OpenStack
compute driver
* Many improvements and additions of extension methods in the Rackspace
  load-balancer driver
* Improvements in the OpenNebula compute driver

For a full list of changes, please see the CHANGES file
<https://svn.apache.org/viewvc/libcloud/tags/0.8.0/CHANGES?revision=r1240459&view=markup>.

### Download

Libcloud 0.8.0 can be downloaded from
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
http://libcloud.apache.org/upgrade-notes-0-8.html.

### Documentation

API documentation can be found at http://libcloud.apache.org/apidocs/0.8.0/.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or test which reproduces your problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the CHANGES
file <https://svn.apache.org/viewvc/libcloud/tags/0.8.0/CHANGES?revision=r1240459&view=markup>.

Source: [release announcement][1].

[1]: http://mail-archives.us.apache.org/mod_mbox/www-announce/201202.mbox/%3CCAJMHEmJJcigBO+ZoSyxFGvc5Z37t-t3KKHBHyyMi7L-J4-Y03A@mail.gmail.com%3E
