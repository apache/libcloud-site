---
layout: post
title: Libcloud 0.11.4 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.11.4!

This release is a bug fix release and contains no new features.

Next release which will contain new features and some backward incompatible
changes will happen in the 0.12.x series in the next couple of weeks.

Bug fixes:

* Fix some of tests failures which happened in Python 3.3 due to randomized
  dictionary ordering.
* Fix a bug where a numeric instead of a string value was used for the
  content-length header in VCloud driver.
* Don't ignore ex_force_service_region argument in the CloudFiles driver.
* Fix a bug which caused the connection to not be closed when using Python
  2.6 and calling get_object on an object which doesn't exist in the S3
  driver.
* Update 'if type' checks in the update_record methods to behave correctly
  if users passes in RecordType.A with a value of 0 - if type is not None.

Full change log can be found at
<https://svn.apache.org/viewvc/libcloud/tags/0.11.4/CHANGES?revision=r1411030&view=markup>.

### Download

Libcloud 0.11.4 can be downloaded from
http://libcloud.apache.org/downloads.html
or installed using pip:

{% highlight bash %}
pip install apache-libcloud
{% endhighlight %}

It is possible that the file hasn't been synced to all the mirrors yet. If
this is the case,
please use the main Apache mirror - http://www.apache.org/dist/libcloud.

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

API documentation can be found at http://libcloud.apache.org/apidocs/0.11.4/.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker <
https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or
test which reproduces your problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the CHANGES
file <https://svn.apache.org/viewvc/libcloud/tags/0.11.3/CHANGES?revision=r1388947&view=markup>.

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-users/201211.mbox/%3CCAJMHEmL73OCjiNqg0QGPWb1Cc2JnQ4OWjXs5ah-sU%2BA%3DOwPUTg%40mail.gmail.com%3E
