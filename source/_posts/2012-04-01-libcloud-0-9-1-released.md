---
layout: post
title: Libcloud 0.9.1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

Libcloud team is pleased to announce the release of Libcloud 0.9.1!

Release highlights:

* A lot of improvements and additional functionality in the OpenStack
driver. Now a generic OpenStack driver (Provider.OPENSTACK) also works with
devstack.org and trystack.org installations
* Improvements and better exception propagation in the deploy_node method
* New driver for ElasticHosts Los Angeles and Toronto location
* Support for new EC2 instance type - m1.medium

Bug fixes:

* Don't lowercase special header names in the Amazon S3 storage driver.
This fixes a bug with multi-objects delete calls.
* Properly handle OpenStack providers which return public IP addresses
under the 'internet' key in the 'addresses' dictionary
* Make create_node in Linode driver return a Node instance instead of a
listen of Node instances

For a full list of changes, please see the CHANGES file
<https://svn.apache.org/viewvc/libcloud/tags/0.9.1/CHANGES?revision=r1307716&view=markup>.

### Download

Libcloud 0.9.1 can be downloaded from
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
http://libcloud.apache.org/upgrade-notes.html.

### Documentation

API documentation can be found at http://libcloud.apache.org/apidocs/0.9.1/.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or test which reproduces your problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the CHANGES
file <https://svn.apache.org/viewvc/libcloud/tags/0.9.1/CHANGES?revision=r1307716&view=markup>.

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-users/201204.mbox/%3CCAJMHEmJzeGL%2BU1PNeX0T-1dcxUC1um88jQTAmskZ-mXTQ3QLGw%40mail.gmail.com%3E
