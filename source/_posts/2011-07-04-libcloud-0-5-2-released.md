---
layout: post
title: Libcloud 0.5.2 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

Hello all,

I would like to announce Libcloud 0.5.2. This release primary fixes two bugs
which were introduced in Libcloud 0.5.0 and improves listing of the objects
in the containers which contain more objects that fit into a single
response.

### Notable changes, bug-fixes and improvements


**Compute**

* Fix a regression in the `deploy_node()` method and make it more robust
* Fix a regression in the Nimbus driver create_node() method
* Improved node name and tag handling in the Amazon EC2 driver
* Improved pricing and response handling in the OpenStack driver
* New driver for SkaliCloud (skalicloud.com)
* New driver for ServerLove (serverlove.com)

**Storage**

* Fix handling of the containers with a lot of objects. Now an iterator
  object is returned when user calls `list_container_objects()` method
  and this object transparently handles pagination.

For a full list of changes, please check the CHANGES file <
https://github.com/apache/libcloud/blob/0.5.2/CHANGES>.

### Download

Libcloud 0.5.2 can be downloaded from
http://libcloud.apache.org/downloads.html or installed using pip - pip
install apache-libcloud

It is possible that the file hasn't been synced to all the mirrors yet so if
this is the case, please use the apache mirror -
http://www.apache.org/dist/libcloud

### Documentation*

API documentation can be found at https://libcloud.apache.org/apidocs/0.5.2/

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker <
https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or test which reproduces your problem.

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-dev/201107.mbox/%3CCAJMHEm+-=3NxsZj+n+bogmYzGsxDJQOU_2aJbuNS77nmnsekJw@mail.gmail.com%3E
