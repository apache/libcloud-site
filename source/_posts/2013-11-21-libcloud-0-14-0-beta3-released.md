---
layout: post
title: Libcloud 0.14.0-beta3 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.14.0-beta3, a first
(beta) release in the 0.14.0 series.

The reason this is a beta and not a final release is that it includes some
pretty big changes (most notably the "region" argument change). I would
like those changes to get some more real-life testing before doing a final
release.

Being a first release in the 0.14.0 series means it brings many (and I mean
many!) new features, changes and improvements.

### Release highlights

* To make working with providers which support multiple regions easier and
  more user-friendly, some of the drivers have moved away from the "one
  class per region" to a single class plus "region" argument model. Those
  drivers include: EC2, Rackspace, ElasticHosts, Joyent, CloudFiles.
* Addition of a programmatic way of updating the pricing file and ability
  to use a custom pricing file. For more information, please see the
  [documentation][3]
* Addition of block storage management methods to the following drivers:
  OpenNebula, OpenStack, EC2
* Unification of the extension arguments for handling security groups in
  the EC2 and OpenStack driver
* Many new features and improvements in the CloudStack driver
* New compute and loadbalancer driver for Google Compute Engine (GCE)
* Ability to export Libcloud's DNS zone to BIND zone format
* and much more!

Some of the changes noted above are also backward incompatible. For more
information on what has changed and how to update your code to work with
a new release, please visit the [Upgrade Notes][4] section in our
documentation.

### Other non-code changes worth a mention

* Tests now also run on travis-ci - [https://travis-ci.org/apache/libcloud][5]
* New documentation is now also available on RTD -
  [https://libcloud.readthedocs.org/en/latest/][6]

Full change log can be found [here][2].

### Download

Libcloud 0.14.0-beta3 can be downloaded from
http://libcloud.apache.org/downloads.html
or installed using pip:

{% highlight bash %}
pip install apache-libcloud==0.14.0-beta3
{% endhighlight %}

It is possible that the file hasn't been synced to all the mirrors yet. If
this
is the case, please use the main Apache mirror -
http://www.apache.org/dist/libcloud.

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

{% highlight bash %}
pip install --upgrade apache-libcloud==0.14.0-beta3
{% endhighlight %}

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at
https://libcloud.readthedocs.org/en/latest/upgrade_notes.html#libcloud-0-14-0
.

### Documentation

Regular and API documentation is available at
https://libcloud.readthedocs.org/en/latest/.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

## Thanks

Thanks to everyone who contributed and made this release possible!

Full list of people who contributed to this release can be found in the
[CHANGES file][2].

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-users/201311.mbox/%3CCAJMHEm%2B51RFT672GanfW9DKopcmDtZz2kkA7m0uufP1UupjeZw@mail.gmail.com%3E
[2]: https://git-wip-us.apache.org/repos/asf?p=libcloud.git;a=blob;f=CHANGES;h=1a8d9e2072d4b49b5718b19f534573f9dfb224e4;hb=5ef0707b2a34f0e8520fe029e7313b7c57f15919#l3
[3]: https://libcloud.readthedocs.org/en/latest/compute/pricing.html#using-a-custom-pricing-file
[4]: https://libcloud.readthedocs.org/en/latest/upgrade_notes.html#libcloud-0-14-0
[5]: https://travis-ci.org/apache/libcloud
[6]: https://libcloud.readthedocs.org/en/latest/
