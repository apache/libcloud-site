---
layout: post
title: Experimental support for the requests package
author: Anthony Shaw
tags:
  - news
  - API
  - tutorial
---

## Background

I've just pushed a branch of the latest version of libcloud using the popular `requests` package by Kenneth Reitz instead of our home-rolled HTTP client library.

This article is for both users and developers of libcloud. If you want to give feedback, please join the developer mailing list.

## Why?

* requests is the defacto standard - it would be in the standard library but agreed against to allow it to develop faster https://github.com/kennethreitz/requests/issues/2424
* it works with python 2.6->3.5
* Our SSL experience has a lot to be desired for Windows users, having to download the CA cert package and setting environment variables just to get SSL working
* Developers can use requests_mock for deeper integration testing
* less code to maintain
* the role of libcloud is for cloud abstraction, we provide no value in writing and maintaining our own HTTP client library

## Benefits of requests

There are a number of benefits to having a requests package

* The client library code is smaller, leaner and simpler.
* Requests has built in decompression support, we no longer need to support this
* Requests has built in RAW download, upload support, helping with our storage drivers

## Implications of the change

* There are no longer 2 classes (`LibcloudHTTPSConnection` and `LibcloudHTTPConnection`) to be provided to each driver, they are now 1 class - `LibcloudConnection`. You probably won't notice this because it is a property of the `Connection` class, but
if you are developing or extending functionality then it is implicated.
* Unit tests will look slightly different (see below)
* This change broke 4200 unit tests (out of 6340)! I've since fixed them all since they were coupled to the original implementation, but now I don't know if all of tests are valid.

## Testing with requests

Unit tests that were written like this:

```python
class DigitalOceanTests(LibcloudTestCase):
  		  
      def setUp(self):
          DigitalOceanBaseDriver.connectionCls.conn_classes = \	
           (None, DigitalOceanMockHttp)
          DigitalOceanMockHttp.type = None
          self.driver = DigitalOceanBaseDriver(*DIGITALOCEAN_v1_PARAMS)
```

Because of the change have been modified to (I updated all of them - so this is just for future reference)

```python
class DigitalOceanTests(LibcloudTestCase):
  		  
      def setUp(self):
          DigitalOceanBaseDriver.connectionCls.conn_class = DigitalOceanMockHttp
          DigitalOceanMockHttp.type = None
          self.driver = DigitalOceanBaseDriver(*DIGITALOCEAN_v1_PARAMS)
```

# Check it out!

The package is on my personal apache site, you can download it and install it in a virtualenv for testing.

`pip install -e http://people.apache.org/~anthonyshaw/libcloud/1.0.0-rc2-requests/apache-libcloud-1.0.0-rc2-requests.zip@feature#egg=apache-libcloud`

The hashes are my [apache space](http://people.apache.org/~anthonyshaw/libcloud/1.0.0-rc2-requests/)

Have a look at the [PR and the change set](https://github.com/apache/libcloud/pull/728/files) for a list of changes

# What might break?

What I'm really looking for is for users of Libcloud to take 15 minutes, an existing (working) libcloud script, install this package in a virtualenv and just validate
that there are no regression bugs with this change.

I'm particularly sceptical about the storage drivers.

Once we have enough community feedback, we will propose a vote to merge this into trunk for future release.

## Credit

Credit to dz0ny on IRC for contributing some of the requests patch.