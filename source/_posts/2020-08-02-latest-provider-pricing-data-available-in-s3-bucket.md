---
layout: post
title: Latest up to date provider pricing.json data file is now available in an S3 bucket
author: Tomaz Muraus
tags:
  - news
  - pricing data
---

Recently we added a new job to our CI / CD which runs daily and retrieves latest
pricing data for various providers and publishes pricing.json file which can be
used by Libcloud to a public read-only S3 bucket.

More information on where to download it and how to use this file can be found in
[our documentation][1].

## Background, Context

In the past, we ran the script which updates pricing.json file which is bundled
with each Libcloud release just before publishing a new release.

The problem is that the pricing data can change often, so updating it only once
every couple of months as part of a Libcloud release is not sufficient.

To solve for that problem, we now update and publish pricing.json file which
includes latest retrieved pricing data for various providers on a daily basis.

It's worth noting that we can't guarantee 100% accuracy of this data so you
should only use this data as estimate and you should never rely solely on
Libcloud pricing data.

## Thanks

We would like to extend special thanks to [Eis D. Zaster][2] who has
contributed new scraping scripts for multiple providers and also made
various improvements and fixes to the existing scraping scripts.

In addition to that, we would like to thank [Amazon Web Services][3] which
granted us free credits for their EC2 and S3 service which we plan to use
for hosting this pricing file, end to end tests and more.

[1]: https://libcloud.readthedocs.io/en/latest/compute/pricing.html#downloading-latest-pricing-data-from-an-s3-bucket
[2]: https://github.com/Eis-D-Z
[3]: https://aws.amazon.com/blogs/opensource/aws-promotional-credits-open-source-projects/
