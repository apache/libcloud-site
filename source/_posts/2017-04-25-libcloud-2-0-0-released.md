---
layout: post
title: Libcloud 2.0.0 released
author: Anthony Shaw
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 2.0.0.

This major release brings many new features, improvements, bug-fixes, and drivers.

## Release highlights

* Apache Libcloud 2.0 series replaces the use of Python httplib with a hard dependency on the `requests` package. Users no longer
  have to specific Certificate Authority bundles when using Apache Libcloud
* 10% performance improvement through the use of HTTP sessions
* Support for buffered IO streams for storage drivers
* Support for Python 3.6, deprecation of Python 3.2
* 3 new drivers - [OnApp Compute](http://libcloud.readthedocs.io/en/latest/compute/drivers/onapp.html), [OnApp DNS](http://libcloud.readthedocs.io/en/latest/dns/drivers/onapp.html), [1&1 Compute](http://libcloud.readthedocs.io/en/latest/compute/drivers/oneandone.html)
* Lots of improvements to our Azure ARM support
* Continuing udates to the Amazon drivers

A detailed description of the 2.0 HTTP API is documented [here](http://libcloud.readthedocs.io/en/latest/other/changes_in_2_0.html)
  
### Compute API Changes

- Outscale SAS doc improvements and logo update

#### OnApp Changes

- Add list images support for OnApp driver
- Add keypair management to OnApp driver

#### Amazon EC2 Changes

- Add r4 instance types for AWS
- Add support for AWS eu-west-2 and ca-central-1 regions
- Add P2 GPU instance types
- Add method to modify snapshot attribute for EC2
- Add ENA support for EC2 compute images
- Add support for forcing detachment of EBS volumes to EC2 driver
- Add support for ModifyVolume and DescribeVolumesModifications
- Added Import Snapshot and Describe Import Snapshot to EC2 compute driver
- Add missing regions in AWS storage and compute drivers
- Add SR-IOV net support to images in EC2 compute driver
- Fix - update t2.small image size from 11 CPU to 1
- Added Billing Product for image in EC2 compute driver

#### Linode changes

- Add start, stop instance methods and fix incorrect state TERMINATED to STOPPED

#### Azure ARM changes

- Fix typeerror on ex_list_nics
- Add support for Azure Cloud Environments as well as Locations
- Fix string representation of the VhdImage type and fix listing of Public IP addresses
- Add network security groups to azure ARM
- Add the ability to list resource groups
- Fix Azure ARM driver condition for ex_list_publishers where location is specified

#### Google Cloud changes

- Allow delete instances from managed group
- Allow preemptible instances to be created
- Remove validation checks for guestOsFeatures

#### Alibaba Aliyun changes

- Add aliyun ecs instance join leave security group
- Fix Aliyun ECS, Load balancer and storage adapters when using unicode UTF-8 characters in the names of resources

#### DigitalOcean changes

- Add price_monthly extra param to digitalocean sizes

#### VMWare vSphere changes

- Fix issue with authentication methods crashing

### Storage

- Reintroduce S3 multipart upload support with signature v4

### DNS

- Add [OnApp driver](http://libcloud.readthedocs.io/en/latest/dns/drivers/onapp.html)

## Minor changes

### Common

- Added an integration test API and a test suite for validating functionality
  without mocking any libcloud subsystems
- Change Cloudscale to cloudscale.ch.

## Bug Fixes

### Compute

#### 2.0.0

- Fix OpenStack drivers not correctly setting URLs when used with identity API, would default to 127.0.0.1 and service
  catalog URLs were not adhered to.

- Fix Aliyun ECS, Load balancer and storage adapters when using unicode UTF-8 characters in the names of resources
  in 2.0.0rc2 < it would fail as a MalformedResponseError, Python 2.7 element tree was raising a unicode error

- Refactor the test classes to use the full libcloud.http and libcloud.common.base modules, with Connection,
  Response all used with requests_mock. This increases our test coverages and catches bugs in drivers' custom
  parse_body and auth modules

- Rename libcloud.httplib_ssl to libcloud.http now that we don't use httplib

#### 2.0.0rc2

- Fix Public IP not assigned when creating NIC on Azure ARM
- Fix a bug in profitbricks driver where listing snapshots would request a malformed URL
- Fix LIBCLOUD-806 bug where vsphere driver cannot be instantiated
- [google compute] Improve performance of list nodes by caching volume information.

  
Full change log can be found at [here][1].

### Special thank you

I would like to wish a special thank you to all of our community contributors
for their ongoing support to the project.

- Tinu Cleatus for the OnApp driver
- Alex Misstear for the EC2 improvements
- Jie Ren for the Aliyun improvements
- Francisco Ros for the DigitalOcean improvements
- Peter Amstutz and Joseph Hall for the Azure ARM API updates
- All of our community for their ongoing support and contributions...

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==2.0.0
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==2.0.0
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
