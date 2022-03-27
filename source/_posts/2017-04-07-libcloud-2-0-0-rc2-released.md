---
layout: post
title: Libcloud 2.0.0rc2 released
author: Anthony Shaw
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 2.0.0rc2.

This release brings many new features, improvements, bug-fixes, and drivers.

## Release highlights

* Apache Libcloud 2.0 series replaces the use of Python httplib with a hard dependency on the `requests` package. Users' no longer
  have to specific Certificate Authority bundles when using Apache Libcloud
* 10% performance improvement through the use of HTTP sessions
* Support for buffered IO streams for storage drivers
* Support for Python 3.6, deprecation of Python 3.2

A detailed description of the 2.0 changes is documented [here](http://libcloud.readthedocs.io/en/latest/other/changes_in_2_0.html)

Note that 2.0.0rc1 was not released to PyPi as 4 breaking issues were discovered by users. The changelog for both 2.0.0rc2 and rc1 is below.

## Release highlights for 2.0.0rc2

### Compute

- Fix a bug in profitbricks driver where listing snapshots would request a malformed URL
- Fix LIBCLOUD-806 bug where vsphere driver cannot be instantiated
- [google compute] Improve performance of list nodes by caching volume information.

### Common

- Fix LIBCLOUD_DEBUG trying to decompress already decompressed responses
- Added an integration test API and a test suite for validating functionality
  without mocking any libcloud subsystems
- Fix for Linode classes since 2.0x
- Fix CertificateConnection not correctly signing requests in 2.0rc1, impacted
  Azure classic driver, OpenStack and Docker driver
- Change Cloudscale to cloudscale.ch.
- Explicitly check if response is None in RawResponse class
  
### Compute

- Outscale SAS doc improvements and logo update
- [GCE] Allow preemptible instances to be created
- Add support for forcing detachment of EBS volumes to EC2 driver
- Fix Public IP not assigned when creating NIC on Azure ARM
- [ONAPP] Add list images support for OnApp driver
- [EC2] Add r4 instance types for AWS
- [EC2] support for AWS eu-west-2 and ca-central-1 regions
- [EC2] Add P2 GPU instance types
- [EC2] Add method to modify snapshot attribute for EC2
- [Linode] Add start, stop instance methods and fix incorrect state TERMINATED to STOPPED
- [EC2] Add ENA support for EC2 compute images
- [Azure ARM] fix typeerror on ex_list_nics
- [GCE] allow delete instances from managed group

### Storage

- Reintroduce S3 multipart upload support with signature v4


## Changes Apache Libcloud 2.0.0rc1

### Common

- Fix DEBUG mode, also add support for using io.StringIO as the file handle when calling libcloud.enable_debug
- Introduction of the requests package as the mechanism for making HTTP requests for all drivers
- Fix bug where custom port and secure flag would not get propagated to connection class
- Fix bug where custom port would not get propagated to connection
- Fix bug where instantiating a connection from URL and then requesting an action with a leading / would lead to
  a malformed URL

### Compute

- Fix a bug in profitbricks driver where listing snapshots would request a malformed URL
- Fix LIBCLOUD-806 bug where vsphere driver cannot be instantiated
- [google compute] Improve performance of list nodes by caching volume information.

  
Full change log can be found at [here][1].

### Special thank you

I would like to wish a special thank you to all of our community contributors
for their ongoing support to the project.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==2.0.0rc2
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==2.0.0rc2
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/latest/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][1].

[1]: https://libcloud.readthedocs.org/en/latest/changelog.html
