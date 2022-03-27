---
layout: post
title: Libcloud 0.6.2 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

Libcloud team is pleased to announce the release of Libcloud 0.6.2!

This is primary a bug-fix release and includes the following bug-fixes:

* Fix the PollingConnection class and actually use the poll_interval class
variable (previously it was ignored). This bug-fix affects Rackspace Cloud
DNS driver, CloudStack and Ninefold compute driver.
* Fix a bug in the Rackspace Cloud DNS driver exception handling and throw
an Exception if an unexpected status code is returned.

Besides the bug-fixes it also includes some new features:

* Support for Amazon's new location (Oregon)
* Expose CloudStack provider. This way it can be used with an arbitrary
CloudStack installation and not just with the provider drivers which
sub-class it (e.g. Ninefold.com driver).

For a full list of changes, please see the CHANGES file
<https://svn.apache.org/viewvc/libcloud/branches/0.6.x/CHANGES?revision=1202009&view=markup>.

### Download

Libcloud 0.6.2 can be downloaded from
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

API documentation can be found at http://libcloud.apache.org/apidocs/0.6.2/.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker <
https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or test which reproduces your problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the CHANGES
file
<https://svn.apache.org/viewvc/libcloud/branches/0.6.x/CHANGES?revision=1202009&view=markup>.

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-users/201111.mbox/%3CCAJMHEmJTN407_JJRfnwDuJxNsWCupEGc0cXWxs%3DM-n8HoHoQKQ%40mail.gmail.com%3E
