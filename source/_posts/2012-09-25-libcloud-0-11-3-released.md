---
layout: post
title: Libcloud 0.11.3 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.11.3!

### Release highlights

**Compute**

* Add new Rackspace Nova driver for Chicago (ORD) location
* Add new methods for managing storage volumes and other extenstion methods
  to the IBM SCE driver.
* Allow user to pass 'timeout' argument to the 'deploy_node' method

**Bug fixes**

* Fix a bug with the Libcloud SSL verification code. Code was too strict
  and didn't allow "-" character in the sub-domain when using a wildcard
  certificate.

Full change log can be found at
<https://svn.apache.org/viewvc/libcloud/tags/0.11.3/CHANGES?revision=r1388947&view=markup>.

### Download

Libcloud 0.11.3 can be downloaded from
http://libcloud.apache.org/downloads.html
or installed using pip:

{% highlight bash %}
pip install apache-libcloud
{% endhighlight %}

It is possible that the file hasn't been synced to all the mirrors yet. If
this is the case, please use the main Apache mirror -
http://www.apache.org/dist/libcloud.

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

API documentation can be found at http://libcloud.apache.org/apidocs/0.11.3/.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / ortest which reproduces your problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the CHANGES
file <https://svn.apache.org/viewvc/libcloud/tags/0.11.3/CHANGES?revision=r1388947&view=markup>.

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/www-announce/201209.mbox/%3CCAJMHEmLn+MV_pcNZv03PW5wuS5c=O8cFdqMH8LFtaUr1gggkdw@mail.gmail.com%3E
