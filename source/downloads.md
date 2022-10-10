---
layout: page_with_sidebar
title: Downloads
description: Download the latest version of Libcloud.
---

# {{ page.title }}

This page contains link to the latest stable release of Libcloud. If you are
interested in an older release, please visit the [archive page][15].

<a name="latest-stable-release" id="latest-stable-release" markdown="1"></a>
## Libcloud 3.6.1 (stable - Python 3.6+ only) - Released on October 10th, 2022

Files:

* [apache-libcloud-3.6.1.tar.gz][32] [[asc][33]] [[sha256][34]] [[sha512][35]]
* [apache-libcloud-3.6.1.tar.bz2][36] [[asc][37]] [[sha256][38]] [[sha512][39]]
* [apache-libcloud-3.6.1.zip][40] [[asc][41]] [[sha256][42]] [[sha512][43]]

Upgrade notes: [Click][16]

<!--<a name="latest-33x-release" id="latest-33x-release"><h2 class="anchor">Libcloud 3.6.1 (bug fix only series - Python 3.5+) - Released on November 15th, 2021</h2></a>

NOTE: Libcloud v3.6.1 dropped support for Python 3.5. If you need to use
Libcloud with Python 3.5 versions, you can use 3.4.x release series. Keep in
mind that 3.3.x release series a bug-fix only. This means all the new features
and improvements will only be added to the 3.5.x+ release series.

Files:

* [apache-libcloud-3.6.1.tar.gz][2] [[asc][3]] [[sha256][4]] [[sha512][5]]
* [apache-libcloud-3.6.1.tar.bz2][6] [[asc][7]] [[sha256][8]] [[sha512][9]]
* [apache-libcloud-3.6.1.zip][10] [[asc][11]] [[sha256][12]] [[sha512][13]]

Upgrade notes: [Click][16]
-->

## Libcloud 2.8.3 (bug fix only series - Python 2.7+ and Python 3.4+) - Released on September 20th, 2020

NOTE: Libcloud v3.0.0 dropped support for Python < 3.5. If you need to use
Libcloud with those Python versions, you can use 2.8.x release series. Keep in
mind that 2.8.x release series a bug-fix only. This means all the new features
and improvements will only be added to the 3.x.x release series.

Files:

* [apache-libcloud-2.8.3.tar.gz][20] [[asc][21]] [[sha256][22]] [[sha512][23]]
* [apache-libcloud-2.8.3.tar.bz2][24] [[asc][25]] [[sha256][26]] [[sha512][27]]
* [apache-libcloud-2.8.3.zip][28] [[asc][29]] [[sha256][30]] [[sha512][31]]

Upgrade notes: [Click][16]

You are strongly encouraged to verify those packages using the [Apache Libcloud
developers KEYS][14]. You can find information on how to do that in the
"Quick package verification guide" section bellow.

## Distribution specific packages

Libcloud is also available in standard repositories of many popular Linux
distributions.

### Ubuntu, Debian (apt)

Package name: `python-libcloud`  
Installation:

{% highlight bash %}
apt-get install python-libcloud
{% endhighlight %}

### Fedora, RedHat (yum)

Package name: `python-libcloud`  
Installation:

{% highlight bash %}
yum install python-libcloud
{% endhighlight %}

### Arch Linux (pacman)

Package name: `apache-libcloud`  
Installation:

{% highlight bash %}
pacman -S apache-libcloud
{% endhighlight %}

### FreeBSD (ports, packages)

Port name: `ports/net/py-libcloud`  
Installation:

{% highlight bash %}
cd /usr/ports/net/py-libcloud
make install clean
{% endhighlight %}

Package name: `py-libcloud`  
Installation:

{% highlight bash %}
pkg_add -r py27-libcloud
{% endhighlight %}

### OpenBSD (ports)

Port name: `py-libcloud`  
Installation:

{% highlight bash %}
cd /usr/ports/net/py-libcloud
make install clean
{% endhighlight %}

### OS X (MacPorts)

Port name: `py-libcloud`  
Installation:

{% highlight bash %}
port installl py-libcloud
{% endhighlight %}

### Anaconda (Linux, OS X, Windows)

Package name: `apache-libcloud`  
Installation:

{% highlight bash %}
conda install -c conda-forge apache-libcloud
{% endhighlight %}

Keep in mind that distribution packages may be out of date. If you want to make
sure that you are using the latest version, you should install it by downloading
the archive from this page or using pip.

## PyPi Package

The Python Package Index or PyPI is the official third-party software
repository for the Python programming language.

We push all the releases to PyPi so you can also download and install the
latest release using pip:

{% highlight bash %}
pip install apache-libcloud
{% endhighlight %}

Keep in mind that `pip install` command doesn't verify the package signatures,
so if you are worried about that, you should manually download the package and
verify the signature using the steps described bellow.

## Old releases

Old releases can be found in the archive at [https://www.apache.org/dist/libcloud/][15].
We strongly recommend to not use those releases, but upgrade to the latest
release available.

## Source code

Source code can be found in our Git repository at [http://gitbox.apache.org/repos/asf/libcloud.git][19]

Read only mirror is also available on Github at [https://github.com/apache/libcloud][18]

## Package verification guide

This section contains quick instructions on how to validate the release PGP
signatures.

1.. Download the [KEYS][14] file from the Apache website

{% highlight bash %}
wget https://www.apache.org/dist/libcloud/KEYS
{% endhighlight %}

It is very important to only download `KEYS` file from the Apache server which
is mentioned above.

2.. Import [KEYS][14] file

   {% highlight bash %}
   gpg --import KEYS
   gpg: key 42721F00: public key "Paul Querna <...>" imported
   gpg: Total number processed: 1
   gpg:               imported: 1
   gpg: 3 marginal(s) needed, 1 complete(s) needed, PGP trust model
   gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
   gpg: next trustdb check due at 2011-10-30</pre>
   {% endhighlight %}

3.. Verify package with `.asc` signature file

{% highlight bash %}
gpg --verify apache-libcloud-3.6.1.tar.bz2.asc apache-libcloud-3.6.1.tar.bz2
gpg: Signature made Wed Oct  6 15:31:35 2010 CDT using DSA key ID 42721F00
gpg: Good signature from "Paul Querna <...>"
gpg:                 aka "Paul Querna <...>"
gpg:                 ...</span>
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: 39F6 691A 0ECF 0C50 E8BB  849C F788 75F6 4273.6.10
{% endhighlight %}

Example of a bad signature:

{% highlight bash %}
gpg --verify apache-libcloud-3.6.1.tar.bz2.asc apache-libcloud-3.6.1.tar.bz2
gpg: Signature made Wed Oct  6 15:31:35 2010 CDT using DSA key ID 42721F00
gpg: BAD signature from "Paul Querna <...>"
{% endhighlight %}

[1]: {{ page.url }}
[2]: https://www.apache.org/dyn/closer.cgi/libcloud/apache-libcloud-3.6.1.tar.gz
[3]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.gz.asc
[4]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.gz.sha256
[5]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.gz.sha512
[6]: https://www.apache.org/dyn/closer.cgi/libcloud/apache-libcloud-3.6.1.tar.bz2
[7]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.bz2.asc
[8]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.bz2.sha256
[9]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.bz2.sha512
[10]: https://www.apache.org/dyn/closer.cgi/libcloud/apache-libcloud-3.6.1.zip
[11]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.zip.asc
[12]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.zip.sha256
[13]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.zip.sha512
[14]: https://www.apache.org/dist/libcloud/KEYS
[15]: http://archive.apache.org/dist/libcloud/
[16]: https://libcloud.readthedocs.org/en/stable/upgrade_notes.html
[18]: https://github.com/apache/libcloud
[19]: http://gitbox.apache.org/repos/asf/libcloud.git
[20]: https://www.apache.org/dyn/closer.cgi/libcloud/apache-libcloud-2.8.3.tar.gz
[21]: https://www.apache.org/dist/libcloud/apache-libcloud-2.8.3.tar.gz.asc
[22]: https://www.apache.org/dist/libcloud/apache-libcloud-2.8.3.tar.gz.sha256
[23]: https://www.apache.org/dist/libcloud/apache-libcloud-2.8.3.tar.gz.sha512
[24]: https://www.apache.org/dyn/closer.cgi/libcloud/apache-libcloud-2.8.3.tar.bz2
[25]: https://www.apache.org/dist/libcloud/apache-libcloud-2.8.3.tar.bz2.asc
[26]: https://www.apache.org/dist/libcloud/apache-libcloud-2.8.3.tar.bz2.sha256
[27]: https://www.apache.org/dist/libcloud/apache-libcloud-2.8.3.tar.bz2.sha512
[28]: https://www.apache.org/dyn/closer.cgi/libcloud/apache-libcloud-2.8.3.zip
[29]: https://www.apache.org/dist/libcloud/apache-libcloud-2.8.3.zip.asc
[30]: https://www.apache.org/dist/libcloud/apache-libcloud-2.8.3.zip.sha256
[31]: https://www.apache.org/dist/libcloud/apache-libcloud-2.8.3.zip.sha512
[32]: https://www.apache.org/dyn/closer.cgi/libcloud/apache-libcloud-3.6.1.tar.gz
[33]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.gz.asc
[34]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.gz.sha256
[35]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.gz.sha512
[36]: https://www.apache.org/dyn/closer.cgi/libcloud/apache-libcloud-3.6.1.tar.bz2
[37]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.bz2.asc
[38]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.bz2.sha256
[39]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.tar.bz2.sha512
[40]: https://www.apache.org/dyn/closer.cgi/libcloud/apache-libcloud-3.6.1.zip
[41]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.zip.asc
[42]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.zip.sha256
[43]: https://www.apache.org/dist/libcloud/apache-libcloud-3.6.1.zip.sha512
