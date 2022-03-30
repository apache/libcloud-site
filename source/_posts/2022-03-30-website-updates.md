---
layout: post
title: Website Updates
author: Tomaz Muraus
tags:
  - news
  - infrastructure
  - website
  - git
---

Today we are happy to announce various website updates. Here is a short
summary of those updates.

* Move from svn to git for storing the website source code and the
  generated static content ([https://github.com/apache/libcloud-site][1])
* New Docker image to make it easier to build and contribute to the website
* Upgrades to the various software and libraries used to build and serve
  the website (Jekyll, Ruby, Ruby Gems, jQuery, Bootstrap, etc.).
* Dark mode / theme for the website
* Removal of Google tracking code (Google Analytics, Google Fonts)
* Removal of various Ruby gems which are not needed to build the website
* Other minor styling improvements

<div class="imginline">
  <img src="/images/posts/tbd/dark_theme.png" class="img-responsive inline" />
  <p class="img-caption">Website using dark mode.</p>
</div>

More on that below.

## Background, Context

It has been over 8 years since the new static [Jekyll powered website has
been launched][2].

8 years is a long time and since then a lot has changed. Especially in the web
world, but the website stayed more or less the same.

Since the website is purely static and doesn't contain any dynamic server side
components this means that not updating the software which is used to build the
website has no negative security implications for the end users (that's a nice
thing about all the static website generators). This is vastly different if you
run a server side CMS such as Wordpress or similar where you need to make sure
it's always up to date with the latest security patches.

Main problem with using old software (Ruby, Jekyll) was that it was very hard
to reproduce local development environment which made it almost impossible for
others to contribute - even I had issues with reproducing the environment in
the past year.

We used Ruby 1.9 and Jekyll 1.5 which were both almost 8 years old and
officially deprecated and non-supported for many years already.

At first, I only wanted to create a Docker image with this old software which
would make it easier for other people to contribute and build the website
locally.

It turned out that even that is very hard now because of the various old
versions of the software and libraries that software depends on. After
many hours, I did [get it to work][3], but I decide to try to go a step
further and see if I can actually update Ruby and Jekyll.

And surely, it turned out that's not an easy task either. Over the years,
Jekyll had many releases with breaking changes and to make things worse, we
also utilize some custom Jekyll plugins which needed to be updated (I was
actually already somewhat aware I'm opening a can of worms because I
already tried to do that a couple of times in the past, but each time I
decided to abandon those efforts since it required too much work / time).

In the end, after addressing all of those various issues and breaking changes,
I got everything to work.

To make contributing even easier and faster, we also provide a pre-built Docker
image with the development environment which should save some time and CPU
cycles since the image doesn't need to be built locally (sadly the image is on
the larger side because a lot of tooling is needed to build the website - I do
hope to reduce that a bit in a future when I get a chance by using a multi
stage build).

Since I was already working on the website I also decided to make a bunch of
other changes, my favorite one being dark mode / theme. I personally already
use [Dark Reader extension for Firefox][4] which automatically provides dark
mode for most websites on the fly, but I know now everyone is using something
like that and a native dark mode / theme is usually better.

The source code and everything else for the new website is available at
[https://github.com/apache/libcloud-site][1].

## Conclusion

We hope you will enjoy those new changes and most importantly, we hope
those changes will decrease the barrier to entry and make contributing to
the website easier and faster.

P.S. If you find any bugs or issues with those changes (especially the dark
theme), please feel free to report them or, if possible, contribute the fix
directly - that would be much appreciated.

[1]: https://github.com/apache/libcloud-site
[2]: https://libcloud.apache.org/blog/2014/01/23/welcome-to-the-new-website.html
[3]: https://libcloud.apache.org/blog/2014/01/23/welcome-to-the-new-website.html
[4]: https://addons.mozilla.org/sl/firefox/addon/darkreader/
