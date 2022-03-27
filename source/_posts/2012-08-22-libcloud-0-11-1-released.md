---
layout: post
title: Libcloud 0.11.1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
  - security release
---

This release fixes a possible SSL man-in-the-middle vulnerability inside
the code which performs the SSL certificate validation. For more
information about the vulnerability, please see the "Security" page -
<http://libcloud.apache.org/security.html>.

Everyone using an older version is strongly encouraged to upgrade to this
release.

### Download

Libcloud 0.11.1 can be downloaded from
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

API documentation can be found at http://libcloud.apache.org/apidocs/0.11.1/.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or test which reproduces your problem.

### Thanks

Thanks to the researchers from the University of Texas at Austin
(Martin Georgiev, Suman Jana and Vitaly Shmatikov) who discovered this
vulnerability.

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/www-announce/201208.mbox/%3CCAJMHEmL958gN+GZT0tWDM9jVmMBj+w0qqY8TYXbJUNPwdW+6yA@mail.gmail.com%3E
