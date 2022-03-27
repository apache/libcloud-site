---
layout: post
title: Libcloud Year in Review 2017
author: Tomaz Muraus
tags:
  - news
  - year in review
---

Another year is behind us. Like most of the previous years, this year included
a lot of exciting development. This post is going to present some statistics and
highlights of the year.

### Year in Numbers (recap)

* 800+ commits
* 191 opened PRs on Github (159 closed, 32 open at the time of this writing)
* 86 opened JIRA issues
* 75+ different contributors
* 4 releases (3 major ones)

<div class="imginline">
  <a href="https://www.openhub.net/p/libcloud" target="_blank"><img src="/images/posts/2017-12-30-libcloud-year-in-review-2017-released/Screenshot from 2017-12-29 19-07-48.png" class="img-responsive inline" /></a>
  <p class="img-caption">Statistics from Open Hub.</p>
</div>

You can also dig into the numbers yourself on [Github][4], [Open Hub][3] and
[Apache Project Information][5].

## Releases

This year we had 4 releases (2.0.0, 2.1.0, 2.2.0, 2.2.1). Out of that, three
major ones.

Libcloud 2.0.0 which was released in April represented a big milestone. We
finally moved away from our home grown HTTP abstraction layer built on top
of Python's httplib library to the popular requests library.

Back in the day when the project started, requests library didn't exist yet so
we needed to build a lot of the functionality which is now provided by requests
ourselves. Move to requests means that we now have a lot less code to maintain
and we can focus our efforts on the actual drivers which is core to Libcloud and
where the project provides value.

To give you an idea how much effort it took - the ground work for that change
started back in 2016 (<https://libcloud.apache.org/blog/2016/04/06/requests-support.html>,
<https://github.com/apache/libcloud/pull/728>), but it took a lot more testing
and work to get it stable enough so we were finally able to include it as part
of the stable 2.0.0 release (and before that, we also released a couple of release
candidates so users could test and verify that their Libcloud related code
still works as expected without any regressions).

Special thanks to [Anthony Shaw][6] for leading this effort and not giving up (the
change itself involved touching a lot of code and updating test cases for most
of the drivers which resulted in a lot of not so pleasant work and merge
conflicts).

## Community

The community continued to grow and we have received contributions from more
than 75 different contributors. Keep in mind that this number only includes
people who contributed a code change which has been merged into trunk. The
actual number is quite a bit higher (code who didn't get merged, people who
reported a bug or didn't include a code change, etc).

We have also added one new committer - Quentin Pradet.

## Ecosystem

In addition to various proprietary and private code bases, Libcloud continues
to be used as an important part by various open-source [projects and
libraries][7].

Most notable ones include [SaltStack][8], [StackStorm][9] and [Ansible][10].

## Conclusion

I would like to take this opportunity to thank everyone who has contributed
to the project in one form or another. No matter how small or involved, your
contribution helped project grow and push through another successful year.

Again, thank you, happy and successful 2018 and see you soon.

[1]: https://issues.apache.org/jira/issues/?jql=project%20%3D%20LIBCLOUD%20and%20createdDate%20%3E%3D%20%222017-01-01%22%20and%20createdDate%20%3C%20%222017-12-31%22%20ORDER%20BY%20created%20DESC%2C%20priority%20DESC%2C%20updated%20DESC
[2]: https://github.com/apache/libcloud/pulls?utf8=%E2%9C%93&q=is%3Apr+created%3A%3E%3D2017-01-01
[3]: https://www.openhub.net/p/libcloud
[4]: https://github.com/apache/libcloud/pulse
[5]: https://projects.apache.org/project.html?libcloud
[6]: https://twitter.com/anthonypjshaw?lang=en
[7]: https://pypi.python.org/pypi?%3Aaction=search&term=libcloud&submit=search
[8]: https://saltstack.com/
[9]: https://stackstorm.com/
[10]: https://www.google.si/search?ei=bqVGWvyGMYOXkwWlgI7gCw&q=ansible&oq=ansible&gs_l=psy-ab.3..0i67k1j0l9.2982.2982.0.3130.1.1.0.0.0.0.99.99.1.1.0....0...1c.1.64.psy-ab..0.1.99....0.4KRxU06xPjw
