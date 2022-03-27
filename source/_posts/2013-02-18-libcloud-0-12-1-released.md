---
layout: post
title: Libcloud 0.12.1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.12.1!

This release includes many new features, improvements and bug-fixes.

### Release highlights

* New more efficient generator based approach for iterating over paginated
  collections.
* New generator based method for iterating over containers
  (iterate_containers).
* Old ENUM style provided constants have been replaced with a string
  version. This allows users to dynamically register new providers using new
  set_driver method.
* Support for multipart uploads in the Amazon S3 storage driver.
* New load balancer driver for Amazon Load Balancing (ELB) service.
* New storage driver for Azure Blog storage
* New "local storage" storage driver
* Support for multipart uploads in the S3 driver
* Allow user to specify which CA cert is used for verifying server SSL
  certificate by setting "SSL_CERT_FILE" environment variable
* Drivers which use xmlrplic library now use Libcloud HTTP layer for making
  HTTP requests. This means those drivers now support LIBCLOUD_DEBUG and SSL
  cert validation functionality

Full change log can be found at
https://svn.apache.org/repos/asf/libcloud/tags/0.12.1/CHANGES

### Download

Libcloud 0.12.1 can be downloaded from
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

API documentation can be found at http://libcloud.apache.org/apidocs/0.12.1/
.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of
people who contributed to this release can be found in the CHANGES file
<https://svn.apache.org/repos/asf/libcloud/tags/0.12.1/CHANGES>.

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-users/201302.mbox/%3CCAJMHEmLc0RfSxM9UhXPeTwKiNDbZPsQs6SJMA1o3y1D4Cv+reA@mail.gmail.com%3E
