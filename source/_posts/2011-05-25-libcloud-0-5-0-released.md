---
layout: post
title: Libcloud 0.5.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

Hello all,

I would like to announce Libcloud 0.5.0. This version represents a big
milestone, because it includes many new features, drivers, improvement and
two totally new API's - storage and load-balancers.

### Major changes and features since the last release

**New Storage API**

Storage API which allows you to manage cloud storage has been added to the
core. Currently two provider drivers are available (Rackspace Cloud Files
and Amazon S3), but you can expect more drivers in the future releases.

**New load-balancer API**

Load-balancer API which allows you to manage load-balancers as a service
(LBaaS) has been added to the core. Currently two provider drivers are
available (Rackspace and GoGrid), but you can expect more drivers in the
future releases.

**New compute drivers**

This release includes 5 new compute drivers. The compute API now supports a
total of 24 different providers.

- Bluebox (contributed by Christian Paredes)
- Gandi.net (contributed by Aymeric Barantal)
- Nimbus (contributed by David LaBissoniere)
- OpenStack (contributed by Roman Bogorodskiy)
- Opsource.net cloud (contributed by Joe Miller)

### API changes

To support new services, core Libcloud API had to be refactored. The library
now consists of three top-level modules:

- libcloud.compute.* (everything related to the compute has been moved here)
- libcloud.storage.* (new place for the storage API)
- libcloud.loadbalancer.* (new place for the load-balancer API)

Importing stuff from the old location (e.g. from libcloud.providers import
get_driver) should still work, but you will receive a deprecation warning.

You are encouraged to update your code to use the new module locations. The
old paths will be fully deprecated and removed in version 0.6.0.

### Other notable changes

All the pricing data has been moved to a separate JSON file. This should
make updating pricing a lot easier.

For a full list of changes, please check the CHANGES file <
https://github.com/apache/libcloud/blob/trunk/CHANGES>.

### Download

Libcloud 0.5.0 can be downloaded from
http://libcloud.apache.org/downloads.html or install it using pip - pip
install apache-libcloud

### Documentation

For the API documentation, please refer to
https://libcloud.apache.org/apidocs/0.5.0/

For a real world example, check the example_{compute,storage,balancer}.py
files which are located in the root directory.

We have been pretty busy with this release so we currently don't have any
articles about the new APIs on the website yet, but we will try to add them
this week.

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker (
https://issues.apache.org/jira/browse/LIBCLOUD).

Attaching an example or test which reproduces it would be ideal

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-dev/201105.mbox/%3CBANLkTi=LqBidHLHUwAJSAWSzd-qSpad+dA@mail.gmail.com%3E
