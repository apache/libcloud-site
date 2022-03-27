---
layout: post
title: Libcloud 0.15.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.15.0.

This is a first release in the 0.15 series which means it brings many
new features, improvements and bug fixes.

### Release highlights

* New compute driver for [Outscale SAS and Outscale INC cloud][3]
* New compute driver for [HP Public Cloud (Helion)][4]
* New compute driver for [Kili public cloud][5]
* Extension methods for the VPC Internet gateway management in the EC2 driver
* Lower memory usage and faster parsing of large XML responses when lxml
  library is installed.
* and much more!

Full change log can be found [here][2].

### Download

Libcloud 0.15.0 can be downloaded from
<https://libcloud.apache.org/downloads.html>

or installed using pip:

{% highlight bash %}
pip install apache-libcloud==0.15.0
{% endhighlight %}

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

{% highlight bash %}
pip install --upgrade apache-libcloud==0.15.0
{% endhighlight %}

### Documentation

Regular and API documentation is available at
<https://libcloud.readthedocs.org/en/v0.15.0/>.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or test which reproduces your problem.

### Thanks

Thanks to everyone who contributed and made this release possible!

Full list of people who contributed to this release can be found in the
[Changelog][2].

[1]: http://mail-archives.us.apache.org/mod_mbox/www-announce/201312.mbox/%3CCAJMHEmJSMN071Xfv8ikLepH_KY-Mkm48e2Qe02FqqFtQaCtfsA@mail.gmail.com%3E
[2]: https://libcloud.readthedocs.org/en/latest/changelog.html#changes-with-apache-libcloud-0-15-0
[3]: https://www.outscale.com/en/
[4]: http://www.hpcloud.com/
[5]: http://kili.io/
