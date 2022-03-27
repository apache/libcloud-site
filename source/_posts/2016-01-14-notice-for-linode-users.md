---
layout: post
title: Notice for Linode users
author: Tomaz Muraus
tags:
  - news
  - linode
  - announcement
---

This is an announcement for users of the Linode driver for Libcloud who might
have started experiencing issues recently.

## Background

A couple of Libcloud users have reported that they have recently started
experiencing issues when talking to the Linode API using Libcloud. They have
received messages similar to the one shown below.

<pre>
socket.error: [Errno 104] Connection reset by peer
</pre>

It turns out that the issue is related to the used SSL / TLS version. For
compatibility and security reasons (Libcloud also supports older Python
versions), Libcloud uses TLS v1.0 by default.

Linode recently dropped support for TLS v1.0 and it now only support TLS >=
v1.1. This means Libcloud won't work out of the box anymore.

## Solution

If you are experiencing this issue, you should update your code to use TLS v1.2
or TLS v1.1 as shown below.

    import ssl

    import libcloud.security
    libcloud.security.SSL_VERSION = ssl.PROTOCOL_TLSv1_1
    # or even better if your system and Python version supports TLS v1.2
    libcloud.security.SSL_VERSION = ssl.PROTOCOL_TLSv1_2

    # Instantiate and work with the Linode driver here...

Keep in mind that for this to work you need to have a recent version of OpenSSL
installed on your system and you need to use Python >= 3.4 or Python 2.7.9.

For more details please see recently updated [documentation][3]. If you are
still experiencing issues or have any questions, please feel free to reach
us via the mailing list or IRC.

Note: Even if you are not experiencing any issues, it's generally a good idea
to use the highest version of TLS supported by your system and the provider you
use.

## Quick note on ssl.PROTOCOL_SSLv23

Python uses ``ssl.PROTOCOL_SSLv23`` constant by default. When this constant is
used, it will let client known to pick the highest protocol version which both
the client and server support (it will be selecting between SSL v3.0, TLS v1.0,
TLS v1.1 and TLS v1.2).

We use ``ssl.PROTOCOL_TLSv1`` instead of ``ssl.PROTOCOL_SSLv23`` for security
and compatibility reasons. SSL v3.0 is considered broken and unsafe and using
``ssl.PROTOCOL_SSLv23`` can result in an increased risk for a downgrade attack.

### Thanks

Special thanks to Jacob Riley, Steve V, Heath Naylor and everyone from
[LIBCLOUD-791][2] who helped debug and track down the root cause of this issue.

[1]: https://libcloud.readthedocs.org/en/latest/changelog.html#changes-with-apache-libcloud-0-20-0
[2]: https://issues.apache.org/jira/browse/LIBCLOUD-791
[3]: https://libcloud.readthedocs.org/en/latest/other/ssl-certificate-validation.html#changing-used-ssl-tls-version
