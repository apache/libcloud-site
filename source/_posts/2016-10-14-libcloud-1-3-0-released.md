---
layout: post
title: Libcloud 1.3.0 released
author: Anthony Shaw
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 1.3.0.

This release brings many new features, improvements, bug-fixes, and drivers.

### Important changes

* RunAbove driver is now the OVH cloud driver because of changes in the
  platform. Users will get a deprecated error message and pointed to the
  website for more information.
* Fixed support for SLES/OpenSUSE 12, now checks the default certificate
  path (does not impact users using certifi).
* DigitalOcean v1 API has been deprecated in favour of the new 2.0 API.

### Release highlights

#### Rancher Driver

Mario Loria contributed a full Rancher driver for our container abstraction
interface. Documentation is available with examples of usage, you can use
the driver to deploy containers, services, stacks or operate and maintain
existing deployments! Thanks Mario.

{% highlight python %}
from libcloud.container.types import Provider
from libcloud.container.providers import get_driver
from libcloud.container.base import ContainerImage

driver = get_driver(Provider.RANCHER)

connection = driver("MYRANCHERACCESSKEY", "MYRANCHERSECRETKEY",
                    host="17.23.66.4", port=443)

image = ContainerImage("hastebin", "hastebin", "rlister/hastebin", "latest",
                       driver=None)

new_service = connection.ex_deploy_service(name="excitingservice", image=image,
                                           environmentid="1e2",
                                           environment={
                                               "STORAGE_TYPE": "file"
                                           })
{% endhighlight %}

#### New API

As well as the direct ``get_driver API``, there is now a short-hand API for
users to choose.

{% highlight python %}
import libcloud

cls = libcloud.get_driver(libcloud.DriverType.COMPUTE, libcloud.DriverType.COMPUTE.RACKSPACE)
{% endhighlight %}

Full change log can be found at [here][1].

### Special thank you

I would like to wish a special thank you to all of our community contributors
for their ongoing support to the project.

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==1.3.0
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==1.3.0
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
