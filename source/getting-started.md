---
layout: page_with_sidebar
title: Getting Started
description: Get up and running with Libcloud in just a couple of minutes
---

# {{ page.title }}

This page contains short instructions on how to get up and running with
Libcloud in just a couple of minutes.

For more in-depth instructions and examples, please refer to the
[documentation][8].

## Installation (stable version)

Libcloud is available on [PyPi][2]. You can install latest stable version using
pip:

{% highlight bash %}
pip install apache-libcloud
{% endhighlight %}

## Installation (development version)

If you feel adventurous and want the latest and greatest, you can install latest
development version from our Git repository:

{% highlight bash %}
pip install git+http://gitbox.apache.org/repos/asf/libcloud.git@trunk#egg=apache-libcloud
{% endhighlight %}

Keep in mind that trunk is usually under heavy development and can contain
backward incompatible changes. You should only use it if you know what you are
doing.

## Using It

This section describes a standard work-flow which you follow when working
with Libcloud drivers.

Code snippet bellow use compute API as an example, but exactly the same
work-flow is followed also when working with other APIs.

1.. Obtain reference to the provider driver

{% highlight python %}
from pprint import pprint

from libcloud.compute.types import Provider
from libcloud.compute.providers import get_driver

cls = get_driver(Provider.RACKSPACE)
{% endhighlight %}

2.. Instantiate the driver with your provider credentials

{% highlight python %}
driver = cls('my username', 'my api key')
{% endhighlight %}

Keep in mind that some drivers take additional arguments such as ``region``
and ``api_version``.

For more information on which arguments you can pass to your provider driver,
see provider-specific documentation and the driver docstrings.

3.. Start using the driver

{% highlight python %}
pprint(driver.list_sizes())
pprint(driver.list_nodes())
{% endhighlight %}

4.. Putting it all together

{% highlight python %}
from pprint import pprint

from libcloud.compute.types import Provider
from libcloud.compute.providers import get_driver

cls = get_driver(Provider.RACKSPACE)
driver = cls('my username', 'my api key')

pprint(driver.list_sizes())
pprint(driver.list_nodes())
{% endhighlight %}

## Where to go from here?

The best thing to do after understanding the basic driver work-flow is to visit
the documentation chapter for the API you are interested in ([Compute][4],
[Object Storage][5], [Load Balance][6], [DNS][7]). Chapter for each API
explains some basic terminology and things you need to know to make an
effective use of that API.

After you have a good grasp of those basic concepts, you are encouraged to
check the documentation for the provider you are interested in (if available)
and usage examples. If the driver specific documentation for the provider
you are interested in is not available yet, you are encouraged to check
docstrings for that driver.

[1]: {{ page.url }}
[2]: http://pypi.python.org/pypi/apache-libcloud
[3]: https://libcloud.readthedocs.org/en/stable/getting_started.html#using-it
[4]: https://libcloud.readthedocs.org/en/stable/compute/index.html
[5]: https://libcloud.readthedocs.org/en/stable/storage/index.html
[6]: https://libcloud.readthedocs.org/en/stable/loadbalancer/index.html
[7]: https://libcloud.readthedocs.org/en/stable/dns/index.html
[8]: https://libcloud.readthedocs.org/en/stable/index.html
