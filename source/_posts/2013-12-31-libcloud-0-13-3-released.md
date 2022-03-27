---
layout: post
title: Libcloud 0.13.3 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
  - security release
---

This release fixes a security issue with a potential leak of data contained on
a destroyed DigitalOcean node. Only users who are using a DigitalOcean driver
are affected.

### Details about the vulnerability

DigitalOcean recently changed the default API behavior from scrub to
non-scrub when destroying a VM without notifying the customers and API
consumers.

Libcloud prior to this release doesn't explicitly send "scrub_data" query
parameter when destroying a node. This means nodes which are destroyed using
Libcloud are vulnerable to later customers stealing data contained on them.

This release fixes that by always sending "scrub_data" query parameter when
destroying a DigitalOcean node.

If you are using a DigitalOcean driver, you are strongly encouraged to
upgrade (or downgrade if you are using 0.14.0-beta3 beta release) to this
release.

For more information, please see the [Security page][2].

### Download

Libcloud 0.13.3 can be downloaded from
<https://libcloud.apache.org/downloads.html>

or installed using pip:

{% highlight bash %}
pip install apache-libcloud==0.13.3
{% endhighlight %}

It is possible that the file hasn't been synced to all the mirrors yet. If
this is the case, please use the main Apache mirror -
https://www.apache.org/dist/libcloud.

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

{% highlight bash %}
pip install --upgrade apache-libcloud==0.13.3
{% endhighlight %}

### Documentation

Regular and API documentation is available at
<https://libcloud.readthedocs.org/en/latest/>.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or test which reproduces your problem.

### Thanks

Thanks to everyone who contributed and made this release possible!

Full list of people who contributed to this release can be found in the
[CHANGES file][3].

[1]: http://mail-archives.us.apache.org/mod_mbox/www-announce/201312.mbox/%3CCAJMHEmJSMN071Xfv8ikLepH_KY-Mkm48e2Qe02FqqFtQaCtfsA@mail.gmail.com%3E
[2]: /security.html#CVE-2013-6480
[3]: https://git-wip-us.apache.org/repos/asf?p=libcloud.git;a=blob;f=CHANGES;h=a06b0ed4c443f9f56784572a4e291e779de599e3;hb=a1fdac91ec9fdf699d77f9f9b01699de7f56171e#l3
