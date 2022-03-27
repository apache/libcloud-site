---
layout: post
title: Libcloud 0.10.1 released
author: Tomaz Muraus
tags:
  - news
  - release announcement
---

Libcloud team is pleased to announce the release of Libcloud 0.10.1!

### Release highlights

**General**

* Allow user to specify which IP to use when calling deploy_node
  (defaults to 'public_ips'). Previously it only worked with public IP, now
  user can pass 'private_ips' as an argument and SSH client will try to
  connect to the node first private IP address.

**Compute**

* New driver for Joyent cloud (http://www.joyentcloud.com/)
* New driver for VCL cloud (
http://www.educause.edu/blog/hes8/CloudComputingandtheVirtualCom/167931)
* A lot of improvements and new features in the Brightbox driver
* Support for Vmware vCloud version 1.5
* Modify ParamikoSSHClient to connect to the SSH agent and automatically
look for private keys in ~/.ssh if the 'auth' and 'ssh_key' argument is not
specified when calling deploy_node.
* Modify IBM driver so it works with IBM Smart Cloud Enterprise

**Storage**

* Support for uploading large files in the CloudFiles driver
* New driver for OpenStack Swift installations based on the CloudFiles
driver

**Bug fixes**

* Fix a bug in the CloudSigma Las Vegas compute driver

For a full list of changes, please see the CHANGES file
<https://svn.apache.org/viewvc/libcloud/tags/0.10.1/CHANGES?revision=r1340892&view=markup>.

### Download

Libcloud 0.10.1 can be downloaded from
http://libcloud.apache.org/downloads.html or installed using pip:

{% highlight bash %}
pip install apache-libcloud
{% endhighlight %}

It is possible that the file hasn't been synced to all the mirrors yet. If
this is the case, please use the main Apache mirror -
http://www.apache.org/dist/libcloud

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

{% highlight bash %}
pip install --upgrade apache-libcloud
{% endhighlight %}

### Upgrade notes

A page which describes backward incompatible or semi-incompatible changes
and how to preserve the old behavior when this is possible can be found at
http://libcloud.apache.org/upgrade-notes.html.

### Documentation

API documentation can be found at http://libcloud.apache.org/apidocs/0.10.1/

### Bugs / Issues

If you find any bug or issue, please report it on our issue tracker
<https://issues.apache.org/jira/browse/LIBCLOUD>. Don't forget to attach an
example and / or test which reproduces your problem.

### Thanks

Thanks to everyone who contributed and made this release possible! Full
list of people who contributed to this release can be found in the CHANGES
file <https://svn.apache.org/viewvc/libcloud/tags/0.10.1/CHANGES?revision=r1340892&view=markup>.

Source: [release announcement][1].

[1]: http://mail-archives.apache.org/mod_mbox/libcloud-users/201205.mbox/%3CCAJMHEmKtqtkWsTHVYeO-ijytw9caQ4p%2B-ip7And3aPJhKuA8vA%40mail.gmail.com%3E
