---
layout: post
title: Welcome to the new website
author: Tomaz Muraus
tags:
  - news
  - infrastructure
  - website
  - git
---

Today we are pleased to announce a new, improved and more user friendly version
of our website.

### Background and History

Original website was developed and published back in 2009 when the project was
first announced.

A lot has changed since 2009 and during that time the web has been evolving at
a rapid pace. Now we have terms such as [responsive web design][2], great
front-end frameworks for building responsive websites such as [Bootstrap][2]
and [Zurb][3] and many other new things which didn't exist or weren't widely
used back when we first launched.

During this time we focused most of our efforts on improving the code and
making the library better. This meant the website didn't receive a lot of
needed love and attention so design-wise, it was mostly stuck in the 2009 era.

Over the years it has become apparent that presentation and documentation is
also equally or even more important then the code itself, so we have decided
to fix some of the "mistakes" we have made in the past.

A couple of months back we launched a [new documentation][4] and today, we are
happy to present you a new and much improved website which was built with
modern tools and principles in mind.

### Improvements and New Features

<div class="imginline">
  <img src="/images/posts/tbd/preview.png" class="img-responsive inline" />
  <p class="img-caption">Responsive design makes a site pleasure to use on a
  variety of devices and screen sizes. Image by placeit.net.</p>
</div>

New website includes many improvements and new features. Some of the more
important ones are listed bellow.

#### More modern and user-friendly design

New website now features a more modern and user-friendly design. This includes
bigger fonts, better typography and so on.

On top of that, the new design is fully responsive which means you can now
better enjoy the content on smaller devices such as mobile phones and tablets.

#### Improved and re-designed landing page

We know that landing pages are very important so we have decided to totally
re-design and re-organise ours.

New landing page now displays all the important information (project features,
code examples, showcases some companies and projects using Libcloud) and also
features a more clear call to action.

#### Blog section

New website now features a fully-fledged blog.

We will use the blog to post important project news, keep you up to date with
what is currently going on and post case studies and stories from projects and
companies which are using Libcloud.

If you are using an RSS reader to stay up to date, we also offer an
[ATOM feed][10].

#### Updated Credits Page

[Credits][9] page now features an up to date list of people who have
contributed code and documentation.

As noted on that page, the list is automatically generated from the CHANGES
file so it might not be 100% accurate.

#### Search Engine Optimizations

We have made some changes which will make our website a bit more friendly to
the web crawlers and search engines. We hope this will make it easier for you
to more quickly find the content you are looking for.

The changes we have made include improvements to the underlying HTML markup,
addition of the [OpenGraph][13] tags and an addition of a sitemap.

### Under the Hood

Old website was powered by [Apache CMS][6]. It mostly worked good enough for
simple use cases, but a small user base means it lacks a large ecosystem around
it which is pretty standard for many other popular content management systems.

Because of that, we have decided to switch to [Jekyll][7], a Ruby based static
website and blog engine.

On top of that, the new website is fully responsive and built using
[Bootstrap 3][2] front-end framework.

Similar to the old website, source code is still stored in an SVN repository
so all the benefits we get from version control are preserved.

Source code of the new website can be found in the [SVN repository][8].

### Conclusion

We hope you will like and enjoy the new website.

We also hope the new website now better reflects the underlying evolution of
the library and the direction we are heading.

If you have any suggestions on how we can make the website even better, don't
hesitate and share it with us. You can send your feedback to the
[mailing list][11], or you can [checkout the website repository][12] and make
the changes yourself.

[1]: http://en.wikipedia.org/wiki/Responsive_web_design
[2]: http://getbootstrap.com/
[3]: http://foundation.zurb.com/
[4]: https://libcloud.readthedocs.org/en/latest/
[5]: http://jekyllrb.com/
[6]: http://www.apache.org/dev/cms.html
[7]: http://jekyllrb.com/
[8]: https://svn.apache.org/repos/asf/libcloud/site/trunk/
[9]: /credits.html
[10]: /blog/atom.xml
[11]: /community.html#mailing-lists
[12]: /community.html#website-repository
[13]: http://ogp.me/
