---
layout: post
title: Libcloud 0.16.0 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 0.16.0!

This is a first release in the 0.16 series which means it brings many
new features, improvements and bug-fixes.

### Release highlights

* Support for OpenStack Identity API v3.0. For more information and
  examples, see the following blog post - [Libcloud now supports OpenStack
  Identity (Keystone) API v3][3].
* Support for HTTP proxy for outgoing HTTP requests. For information on how
  to use this new feature, please refer to the [Using an HTTP proxy][4] section
  in the documentation.
* New driver for [VMware vSphere][7] based clouds. For documentation, please see
  [this][5] page.
* Support for [Amazon GovCloud][8].
* New driver for the [ProfitBricks][6] provider.
* Support for authentication with the internal metadata service in the
  Google Compute Engine driver. For more information, please refer to the
  [Internal Authentication][9] section in the documentation.
* Easier debugging with ``LIBCLOUD_DEBUG`` by pretty-formatting JSON and XML
  responses. For information on how to use this feature, see [Making JSON / XML
  response human friendly][10] example in the documentation.
* and more

Full change log can be found at [here][2].

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==0.16.0
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==0.16.0
</pre>

### Upgrade notes

A page which describes backward incompatible or semi-incompatible
changes and how to preserve the old behavior when this is possible
can be found at <https://libcloud.readthedocs.org/en/latest/upgrade_notes.html#libcloud-0-16-0>

### Documentation

Regular and API documentation is available at <https://libcloud.readthedocs.org/en/v0.16.0/>

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>.
Don't forget to attach an example and / or test which reproduces your
problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the
[CHANGES file][2].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-dev/201407.mbox/%3c82E964C2-22F0-4D08-80AA-F3C8EC124B70@gmail.com%3e
[2]: https://libcloud.readthedocs.org/en/latest/changelog.html#changes-with-apache-libcloud-0-16-0
[3]: http://www.tomaz.me/2014/08/23/libcloud-now-supports-openstack-identity-keystone-api-v3.html
[4]: https://libcloud.readthedocs.org/en/latest/other/using-http-proxy.html
[5]: https://libcloud.readthedocs.org/en/latest/compute/drivers/vsphere.html
[6]: https://www.profitbricks.com/
[7]: http://www.vmware.com/products/vsphere/
[8]: https://aws.amazon.com/govcloud-us/
[9]: https://libcloud.readthedocs.org/en/latest/compute/drivers/gce.html#internal-authentication
[10]: https://libcloud.readthedocs.org/en/latest/troubleshooting.html#example-2-making-json-xml-response-human-friendly
