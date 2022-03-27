---
layout: post
title: Libcloud 0.14.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce a long awaited Libcloud 0.14.0 release.

This is a first release in the 0.14 series which means it brings many
(and I mean many!) new features, changes and improvements.

### Release highlights

* To make working with providers which support multiple regions easier and
  more user-friendly, some of the drivers have moved away from the "one
  class per region" to a single class plus "region" argument model. Those
  drivers include: EC2, Rackspace, ElasticHosts, Joyent, CloudFiles.
* Addition of a programmatic way of updating the pricing file and ability
  to use a custom pricing file. For more information, please see
  https://libcloud.readthedocs.org/en/latest/compute/pricing.html#using-a-custom-pricing-file
* Addition of block storage management methods to the following drivers:
  OpenNebula, OpenStack, EC2
* Unification of the extension arguments for handling security groups in
  the EC2 and OpenStack driver
* New standard compute API for SSH key-pair management
* Many new features and improvements in the CloudStack driver
* New compute and load balancer driver for Google Compute Engine (GCE)
* Ability to export Libcloud's DNS zone to BIND zone format
* and much more!

Full change log can be found [here][4] and [here][2] (keep in mind that this
release also includes all the changes from 0.14.0-beta3).

### Note about backward compatibility

Some of the changes noted above are backward incompatible. For more
information on what has changed and how to update your code to work with
a new release, please visit the [Upgrade Notes page][3].

### Download

Libcloud 0.14.0 can be downloaded from
<https://libcloud.apache.org/downloads.html>

or installed using pip:

{% highlight bash %}
pip install apache-libcloud==0.14.0
{% endhighlight %}

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

{% highlight bash %}
pip install --upgrade apache-libcloud==0.14.0
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
[Changelog][2].

[1]: http://mail-archives.us.apache.org/mod_mbox/www-announce/201312.mbox/%3CCAJMHEmJSMN071Xfv8ikLepH_KY-Mkm48e2Qe02FqqFtQaCtfsA@mail.gmail.com%3E
[2]: https://libcloud.readthedocs.org/en/latest/changelog.html#changes-with-apache-libcloud-0-14-0
[3]: https://libcloud.readthedocs.org/en/latest/upgrade_notes.html#libcloud-0-14-0
[4]: https://libcloud.readthedocs.org/en/latest/changelog.html#changes-with-apache-libcloud-0-14-0-beta3
