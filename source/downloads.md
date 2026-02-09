---
layout: page_with_sidebar
title: Downloads
description: Download the latest version of Libcloud.
---

# {{ page.title }}

This page contains link to the latest stable release of Libcloud. If you are
interested in an older release, please visit the [archive page][11].

<a name="latest-stable-release" id="latest-stable-release" markdown="1"></a>
## Libcloud 3.9.0 (stable - Python 3.10+ only) - Released on February 9th, 2026.

Files:

* [apache-libcloud-3.9.0.tar.gz][2] [[asc][3]] [[sha256][4]] [[sha512][5]]
* [apache_libcloud-3.9.0-py2.py3-none-any.whl][6] [[asc][7]] [[sha256][8]] [[sha512][9]]

Upgrade notes: [Click][12]

<!--<a name="latest-34x-release" id="latest-34x-release"><h2 class="anchor">Libcloud 3.9.0 (bug fix only series - Python 3.5+) - Released on November 15th, 2021</h2></a>

NOTE: Libcloud v3.9.0 dropped support for Python 3.7, 3.8 and 3.9,, . If you need to use
Libcloud with Python 3.9- versions, you can use 3.8.x release series. Keep in
mind that 3.8.x release series a bug-fix only. This means all the new features
and improvements will only be added to the 3.9.x+ release series.

Files:

* [apache-libcloud-3.9.0.tar.gz][2] [[asc][3]] [[sha256][4]] [[sha512][5]]
* [apache_libcloud-3.9.0-py3-none-any.whl][6] [[asc][7]] [[sha256][8]] [[sha512][9]]

Upgrade notes: [Click][12]
-->

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

Old releases can be found in the archive at [https://www.apache.org/dist/libcloud/][13].
We strongly recommend to not use those releases, but upgrade to the latest
release available.

## Source code

Source code can be found in our Git repository at [http://gitbox.apache.org/repos/asf/libcloud.git][14]

Read only mirror is also available on Github at [https://github.com/apache/libcloud][15]

## Package verification guide

This section contains quick instructions on how to validate the release PGP
signatures.

1.. Download the [KEYS][10] file from the Apache website

{% highlight bash %}
wget https://www.apache.org/dist/libcloud/KEYS
{% endhighlight %}

It is very important to only download `KEYS` file from the Apache server which
is mentioned above.

2.. Import [KEYS][10] file

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
gpg --verify apache_libcloud-3.9.0-py3-none-any.whl.asc  apache_libcloud-3.9.0-py3-none-any.whl
gpg: Signature made Mon Feb  9 2026 09:33:58 CET
gpg:                usando RSA clave 850E0FCB27978A253F91A1B4A0EAB893EA695D58
gpg: Good signature from "Miguel Caballer <...>"
gpg:                 ...</span>
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: 850E 0FCB 2797 8A25 3F91  A1B4 A0EA B893 EA69 5D58
{% endhighlight %}

Example of a bad signature:

{% highlight bash %}
gpg --verify apache_libcloud-3.9.0-py3-none-any.whl.asc  apache_libcloud-3.9.0-py3-none-any.whl
gpg: Signature made Wed Oct  6 15:31:35 2010 CDT using DSA key ID 42721F00
gpg: BAD signature from "Paul Querna <...>"
{% endhighlight %}

apache_libcloud-3.9.0
[1]: {{ page.url }}
[2]: https://www.apache.org/dyn/closer.cgi/libcloud/apache-libcloud-3.9.0.tar.gz
[3]: https://www.apache.org/dist/libcloud/apache-libcloud-3.9.0.tar.gz.asc
[4]: https://www.apache.org/dist/libcloud/apache-libcloud-3.9.0.tar.gz.sha256
[5]: https://www.apache.org/dist/libcloud/apache-libcloud-3.9.0.tar.gz.sha512
[6]: https://www.apache.org/dyn/closer.cgi/libcloud/apache_libcloud-3.9.0-py3-none-any.whl
[7]: https://archive.apache.org/dist/libcloud/apache_libcloud-3.9.0-py3-none-any.whl.asc
[8]: https://www.apache.org/dist/libcloud/apache_libcloud-3.9.0-py3-none-any.whl.sha256
[9]: https://www.apache.org/dist/libcloud/apache_libcloud-3.9.0-py3-none-any.whl.sha512
[10]: https://www.apache.org/dist/libcloud/KEYS
[11]: http://archive.apache.org/dist/libcloud/
[12]: https://libcloud.readthedocs.org/en/stable/upgrade_notes.html
[13]: https://www.apache.org/dist/libcloud/
[14]: http://gitbox.apache.org/repos/asf/libcloud.git
[15]: https://github.com/apache/libcloud