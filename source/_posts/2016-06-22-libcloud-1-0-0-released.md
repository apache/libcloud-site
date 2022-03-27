---
layout: post
title: Libcloud 1.0.0 released
author: Anthony Shaw
tags:
  - news
  - release announcement
---

We are pleased to announce the release of Libcloud 1.0.0.

This first release in the 1.0 series which means it brings many new
features, improvements, bug-fixes, and drivers. The 1.0 series includes 2 new driver types, [container-as-a-service][2] and [backup-as-a-service][3].

### Release highlights

This includes:

* New backup-as-a-service and container-as-a-service driver types
* Deprecated drivers that were no longer available such as Ninefold, IBM SCE [more details][9]
* Add support for authenticating against Keystone and OpenStack based clouds
  using OpenID Connect tokens.
* GCE nodes can be launched in a subnetwork and support for subnetworks
* Add Image Family support for GCE
* Add new `Perth, Australia` and `Manila, Philippines` region to the CloudSigma
  v2 driver.
* Add new S3 RGW storage driver.
* The Amazon EC2 driver has been changed to use region codes instead of separate drivers for each region.
* Introduce new `list_regions` class method on the base driver class
* Support for Dimension Data backup
* Added NSOne, LuaDNS, NearlyFreeSpeech.NET, BuddyNS, DNSPod DNS drivers
* Added Aliyun compute, load balancer and storage drivers
* Added Outscale storage driver

Full change log can be found at [here][1].

### Special thank you

I would like to wish a special thank you to all of our community contributors for their ongoing support to the project.

<a href="https://github.com/Kami">Tomaz Muraus</a>, <a href="https://github.com/pquerna">Paul Querna</a>, 
<a href="https://github.com/jcsalterego">Jerry Chen</a>, <a href="https://github.com/jadunham1">Jeff Dunham</a>, <a href="https://github.com/erjohnso">Eric Johnson</a>,
<a href="https://github.com/jedsmith">Jed Smith</a>, <a href="https://github.com/wrigri">Rick Wright</a>, <a href="https://github.com/novel">Roman Bogorodskiy</a>,
<a href="https://github.com/baldwinmathew">Mathew Baldwin</a>, <a href="https://github.com/davidcrossland">David Crossland</a>, <a href="https://github.com/alex">Alex Gaynor</a>,
<a href="https://github.com/allardhoeve">Allard Hoeve</a>, <a href="https://github.com/runseb">Sebastien Goasguen</a>, <a href="https://github.com/franckcuny">Franck Cuny</a>,
<a href="https://github.com/ktdreyer">Ken Dreyer</a>, <a href="https://github.com/jcastillo2nd">Javier Castillo II</a>, <a href="https://github.com/wido">Wido den Hollander</a>,
<a href="https://github.com/bennettaur">Michael Bennett</a>, <a href="https://github.com/ZuluPro">Anthony Monthe</a>, <a href="https://github.com/zerthimon">Lior Goikhburg</a>,
<a href="https://github.com/encyphered">Geunwoo Shin</a>, <a href="https://github.com/juanfont">Juan Font</a>, <a href="https://github.com/schaubl">"schaubl"</a>,
<a href="https://github.com/mbrukman">Misha Brukman</a>, <a href="https://github.com/jetbird">Oltjano Terpollari</a>, <a href="https://github.com/pzrq">Peter Schmidt</a>,
<a href="https://github.com/mingsheng36">Ming Sheng</a>, <a href="https://github.com/gertjanol">Gertjan Oude Lohuis</a>,
<a href="https://github.com/mgogoulos">Markos Gogoulos</a>, <a href="https://github.com/bernard357">Bernard Paques</a>,
<a href="https://github.com/Phreedom">Evgeny Egorochkin</a>, <a href="https://github.com/gigimon">Oleg</a>, <a href="https://github.com/atsaki">Atsushi Sasaki</a>,
<a href="https://github.com/micafer">Miguel Caballer</a>, <a href="https://github.com/kumarappanc">Kumar</a>, <a href="https://github.com/gmcdonald">Gavin McDonald</a>,
<a href="https://github.com/boul">Roeland Kuipers</a>, <a href="https://github.com/briancurtin">Brian Curtin</a>, <a href="https://github.com/ikusalic">Ivan Kusalic</a>,
<a href="https://github.com/ferewuz">Vanč Levstik</a>, <a href="https://github.com/davidwilson2038">None</a>, <a href="https://github.com/Smotko">Anže Pečar</a>,
<a href="https://github.com/MrBasset">"MrBasset"</a>, <a href="https://github.com/crunkleton">None</a>, <a href="https://github.com/jmunhoz">Javier M. Mellid</a>,
<a href="https://github.com/jimbobhickville">Greg Hill</a>, <a href="https://github.com/Jc2k">None</a>, <a href="https://github.com/sfriesel">Stefan Friesel</a>,
<a href="https://github.com/relaxdiego">Mark Maglana</a>, <a href="https://github.com/aleGpereira">Alejandro Gabriel Pereira</a>,
<a href="https://github.com/kyle-long">Kyle Long</a>, <a href="https://github.com/teemuvesala">Teemu Vesala</a>, <a href="https://github.com/LordShion">Filipe Silva</a>,
<a href="https://github.com/jshridha">Jay</a>, <a href="https://github.com/bernieke">Bernard Kerckenaere</a>, <a href="https://github.com/jobelenus">John Obelenus</a>,
<a href="https://github.com/bsdlp">Jon Chen</a>, <a href="https://github.com/lawrencellui-dd">Larry Lui</a>,


### Important breaking change-  Amazon EC2 driver changes

The Amazon EC2 API was updated to consolidate the regional-based drivers into a single driver with a region argument in the constructor.

Amazon Instances should now be instantiated using the following syntax:

```python
from libcloud.compute.types import Provider
from libcloud.compute.providers import get_driver

cls = get_driver(Provider.EC2)
driver = cls('access key', 'secret key', region='us-east-1')
```

This brings the Amazon API inline with the other drivers, makes it easier to maintain and switch between regions.

### Bug fixes

#### General

- Fix a bug with consuming stdout and stderr in the paramiko SSH client which
  would manifest itself under very rare condition when a consumed chunk only
  contained a single byte or part of a multi byte UTF-8 character.
  [Lakshmi Kannan, Tomaz Muraus]

- Increase default chunk size from ``1024`` to ``4096`` bytes in the paramiko
  SSH client. This results in smaller number of receive calls on the average.
  [Tomaz Muraus]

- Fix to Dimension Data API address for Middle-East and Africa
  (GITHUB-700)
  [Anthony Shaw]

- Throw a more user-friendly exception on "No address associated with hostname".
  (GITHUB-711, GITHUB-714, LIBCLOUD-803)
  [Tomaz Muraus, Scott Crunkleton]

* Remove deprecated provider constants with the region in the name and related
  driver classes (e.g. ``EC2_US_EAST``, etc.).

  Those drivers have moved to single provider constant + ``region`` constructor
  argument model.
  [Tomaz Muraus]

### New or deprecated drivers

#### Compute

- Deprecated IBM SCE, HP Helion, OpSource, Ninefold and CloudFrames drivers, removed
  driver code and tests.
  (GITHUB-701, LIBCLOUD-801)
  [Anthony Shaw]

- Introduced error messages (`libcloud.compute.deprecated`) for deprecated drivers
  (GITHUB-701, LIBCLOUD-801)
  [Anthony Shaw]

- New Compute drivers- BSNL, Indosat, Med-1, NTT-America, Internet Solutions
  (GITHUB-700)
  [Anthony Shaw]

- New driver for Aliyun Elastic Compute Service.
  (LIBCLOUD-802, GITHUB-712)
  [Sam Song]

#### Storage

- Added Outscale storage driver
  (GITHUB-730)
  [Javier M. Mellid]

- New driver for Aliyun OSS Storage Service.
  (LIBCLOUD-802, GITHUB-712)
  [Sam Song]

#### Loadbalancer

- New driver for Aliyun SLB Loadbalancer Service.
  (LIBCLOUD-802, GITHUB-712)
  [Sam Song]

#### DNS

- Added NearlyFreeSpeech.net (NSFN) driver
  [Ken Drayer]

- Added Lua DNS driver
  [Oltjano Terpollari]

- Added NSOne driver
  [Oltjano Terpollari]

## Bug fixes

- Fix a bug in the GoDaddy driver - make sure ``host`` attribute on the
  connection class is correctly set to the hostname.
  [Tomaz Muraus]

- Fix handling of ``MX`` records in the Gandi driver.
  (GITHUB-718)
  [Ryan Lee]
  

## Improvements

### Compute

* Introduce new `list_regions` class method on the base driver class. This
  method is to be used with provider drivers which support multiple regions and
  ``region`` constructor argument. It allows users to enumerate available /
  supported regions.
  [Tomaz Muraus]

- [dimension data] added support for VMWare tools VM information inside list_nodes responses
  (GITHUB-734)
  [Jeff Dunham]

- [ec2] added ex_encrypted and ex_kms_key_id optional parameters to the create volume method
  (GITHUB-729)
  [Viktor Ognev]

- [dimension data] added support for managing host anti-affinity rules, added paging support to
  all supported calls and added support for requesting priority ordering when creating ACL rules
  (GITHUB-726)
  [Jeff Dunham]

- Addition of Dimension Data Australia federal government region to dimension data
  drivers.
  (GITHUB-700)
  [Anthony Shaw]

- [openstack] when creating floating IPs, added pool_id as an optional argument
  (GITHUB-725)
  [marko-p]

- [google compute] Added setMachineType method to allow for changing sizes of instances
  (GITHUB-721)
  [Eric Johnson]

- [google compute] allow bypassing image search in standard project list
  (GITHUB-713)
  [Max Illfelder]

- Add support for requesting a MKS token for accessing the remote console in VMware
  vCloud driver
  (GITHUB-706)
  [Juan Font Alonso]

- Add support in VMware vCloud driver for v5.5 API, with snapshot support
  (GITHUB-658)
  [Juan Font Alonso]

- Added support for adding a family to an image on Google Compute Driver
  (GITHUB-704)
  [Max Illfelder]

- Fix to set default signature version for AWS Seoul region to v4, removed
  non-supported size (hs1.xlarge)
  (GITHUB-684)
  [Geunwoo Shin]

- Support filtering by location in list_nodes for dimension data compute driver
  fix lack of paging support
  (GITHUB-691)
  [Jeff Dunham]

- Support for filtering by IPv4, IPv6, network, network domain, VLAN in Dimension
  data driver.
  (GITHUB-694)
  [Jeff Dunham]

- Added `Node.created_at` which, on supported drivers, contains the datetime the
  node was first started.
  (GITHUB-698)
  [Allard Hoeve] [Rick van de Loo]

### Storage

- Improvements to Google Auth for Storage and Compute and MIME bug fix
  (LIBCLOUD-800, GITHUB-689)
  [Scott Crunkleton]

- Implement ``get_container``, ``get_object`` and ``upload_object_via_stream``
  methods in the Backblaze B2 storage driver.

  Note: Backblaze API doesn't upload streaming uploads so when using
  ``upload_object_via_stream`` whole file is read and buffered in memory.
  (GITHUB-696)
  [Jay jshridha]

### Backup

- Dimension Data - added additional testing, fixed bug on client response naming,
  added support for adding backup clients to a backup enabled node.
  (GITHUB-692, GITHUB-693, GITHUB-695)
  [Jeff Dunham]

### Download

The release can can be downloaded from
<https://libcloud.apache.org/downloads.html> or installed using pip:

<pre>
pip install apache-libcloud==1.0.0
</pre>

### Upgrading

If you have installed Libcloud using pip you can also use it to upgrade it:

<pre>
pip install --upgrade apache-libcloud==1.0.0
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
[2]: http://libcloud.readthedocs.io/en/latest/container/index.html
[3]: http://libcloud.readthedocs.io/en/latest/backup/index.html
[9]: http://libcloud.apache.org/blog/2016/02/16/new-drivers-deprecated-drivers.html
