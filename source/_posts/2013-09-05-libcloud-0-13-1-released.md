---
layout: post
title: Libcloud 0.13.1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.13.1!

This is a bug-fix only release. Among some smaller bugs it also fixes
Content-Length regression which broke create and update operations in
the Bluebox Compute and Azure Storage driver (LIBCLOUD-362, LIBCLOUD-3901).

Full change log can be found at [here][2].

### Download

Libcloud 0.13.0 can be downloaded from
http://libcloud.apache.org/downloads.html
or installed using pip:

{% highlight bash %}
pip install apache-libcloud
{% endhighlight %}

It is possible that the file hasn't been synced to all the mirrors yet. If
this
is the case, please use the main Apache mirror -
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

API documentation can be found at http://libcloud.apache.org/apidocs/0.13.1/
.

We also have a new Sphinx documentation which can be found at
https://libcloud.apache.org/docs/.
Keep in mind though, that this documentation reflects state in trunk which
includes some backward incompatible changes which aren't present in 0.13.1.
All the examples in the documentation which only work with trunk are
clearly marked with a note.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of
people who contributed to this release can be found in the [CHANGES file][2].

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-users/201309.mbox/%3CCAJMHEmL4-Xuysx13z1EDwq-1K95eDyANqgY2tYGUT-MB5Sz4bQ%40mail.gmail.com%3E
[2]: https://git-wip-us.apache.org/repos/asf?p=libcloud.git;a=blob;f=CHANGES;h=ca90c84e296ca82e2206eb86ed7364c588aad503;hb=602b6a7a27dca6990a38eb887e1d6615826387d5
