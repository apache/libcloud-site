---
layout: post
title: Libcloud 0.14 and the new Exoscale driver
author: Tomaz Muraus
tags:
  - articles
  - new features
---

Libcloud 0.14 which has been [released recently][1] includes many new features
and improvements. One of those new features is also a driver for the
[Exoscale public cloud][2].

Exoscale is a public cloud service provider based in Switzerland. Their cloud
is powered by an open-source cloud computing platform [Apache CloudStack][4].
As such, the new Exoscale driver heavily relies on the existing
[CloudStack driver][5].

<div class="imginline">
  <a href="https://www.exoscale.ch" target="_blank">
  <img src="/images/posts/2014-01-27-libcloud-0-14-and-the-new-exoscale-driver/exoscale.png" class="img-responsive inline" />
  </a>
</div>

If you want to learn more about how to get started with the new Exoscale
driver, you should read [Libcloud 0.14 and Exoscale][3] blog post which has
been written by one of our developers and posted on the Exoscale blog.

[1]: /blog/2014/01/22/libcloud-0-14-0-released.html
[2]: https://www.exoscale.ch/open-cloud/compute/
[3]: https://www.exoscale.ch/syslog/2014/01/27/licloud-guest-post/
[4]: https://cloudstack.apache.org/
[5]: https://libcloud.readthedocs.org/en/latest/compute/drivers/cloudstack.html
