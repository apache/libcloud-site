---
layout: post
title: New compute drivers and deprecated drivers in 1.0
author: Anthony Shaw
tags:
  - news
  - announcement
---

With Libcloud 1.0.0 around the corner, it's time to have a spring clean of the compute drivers. Granted, it's not spring everywhere -actually
I'm writing from Sydney, Australia where it's definitely summer.

Looking at the 52 providers in the 0.21.0 release, I have identified 5 providers that are no longer available or open.

* CloudFrames
 * Looks dead - website doesn't work, can't see any references to this online.
 * ``libcloud.compute.drivers.cloudframes``
* HP Public Cloud (Helion)
 * [Shut down on 31st of January 2016][1]
 * ``libcloud.compute.drivers.hpcloud``
* IBM SmartCloud Enterprise
 * [Shut down 2014, customers instructed to move to SoftLayer][2]
 * ``libcloud.compute.drivers.ibm_sce``
* Ninefold
 * [Ninefold shut down in January 2016][3]
 * ``libcloud.compute.drivers.ninefold``
* Opsource
 * Dimension Data acquired OpSource in 2012, the Opsource driver is succeeded by the Dimension Data driver.
 * ``libcloud.compute.drivers.opsource``

### Handling deprecated drivers

For 1.0.0, we need a clean and user-friendly way of handling deprecated drivers as well as keeping the repository clean from legacy code.

The most obvious implementation is that calls to `get_driver(Provider.NINEFOLD)` as an example will return a user error message saying
this provider is no longer supported with a link to a new article and an alternative solution.

Currently, users trying to instantiate a HPE public cloud driver for example will get a connection error, which is not user friendly.

### New compute drivers in 1.0.0-pre2

The upcoming release, so currently available in trunk contains some new compute drivers.

* [NTT America Public Cloud][4]
* [Internet Solutions Public Cloud][5]
* [Med-1 Public Cloud][6]
* [Indosat Cloud][7]
* [BSNL IDC Cloud][8]

Full change log can be found at [here][9].

[1]: https://tahoe-lafs.org/trac/tahoe-lafs/ticket/2566
[2]: http://www.theregister.co.uk/2013/10/31/ibm_to_shutter_smartcloud_enterprise_moves_customers_to_softlayer/
[3]: http://www.itnews.com.au/news/ninefold-to-shut-down-411312
[4]: http://libcloud.readthedocs.org/en/latest/compute/drivers/ntta.html
[5]: http://libcloud.readthedocs.org/en/latest/compute/drivers/internetsolutions.html
[6]: http://libcloud.readthedocs.org/en/latest/compute/drivers/medone.html
[7]: http://libcloud.readthedocs.org/en/latest/compute/drivers/indosat.html
[8]: http://libcloud.readthedocs.org/en/latest/compute/drivers/bsnl.html
[9]: https://github.com/apache/libcloud/blob/trunk/CHANGES.rst