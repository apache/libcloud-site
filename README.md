# Apache Libcloud Website

[![Build Docker Image](https://github.com/apache/libcloud-site/actions/workflows/build_docker_image.yaml/badge.svg)](https://github.com/apache/libcloud-site/actions/workflows/build_docker_image.yaml)

This repository contains source code for a Libcloud website powered by
[Jekyll][1].

## System Dependencies

* Ruby >= 3.1.1
* Jekyll >= 4.2.2
* Gems: `bundler` (gem install bundler)
* jpgoptim (optional, for compressing images)
* optipng (optional, for compressing images)
* Node.js (optional, needed for Grunt tasks)

You are strongly encouraged to utilize provided Dockerfile which contains
all the dependencies which makes building the website a breeze.

Keep in mind that the initial image build may take a while since all the
dependencies need to be installed and build, but subsequent runs should be
much faster.

In case you want to install all the dependencies locally outside the Docker
container, you are encouraged to install and use [rvm](https://rvm.io/)
and use rvm to install Ruby as shown below.

```bash
rvm install 3.1.1
rvm use 3.1.1
gem install bundler -v "2.3.0"
```

## Installing Ruby dependencies

```bash
rvm use 3.1.1
bundle install
```

## Installing Node.js dependencies

```bash
npm install .
```

## Linting code

```bash
node_modules/.bin/grunt lint
```

## Running Local Development Server

```bash
./scripts/docker-run-dev-server.sh
# Non-Docker versions
#./scripts/run-dev-server.sh
```

This will start Docker container with local development server listening on port
4000 available at http://localhost:4000/.

## Building and Publishing the Website

```bash
./scripts/docker-build-site.sh
# Non-Docker versions
#./scripts/docker-build-site.sh
# asf-site for prod, asf-staging for staging
./scripts/stage-changes.sh {asf-site,asf-staging}
git push origin <branch>
```

## Note on pre-built Docker images

To speed up local development, we offer pre-built version of theDocker image 
used for local development -
https://github.com/apache/libcloud-site/pkgs/container/libcloud-site-dev.

This image is used by default when using ``./scripts/docker-*.sh`` scripts.

If for some reason you want to use locally built Docker image (e.g. you have
made changes changes to the Dockerfile, Gemfile or similar), you can do that by
setting ``USE_LOCAL_DOCKER_IMAGE=1`` environment variable when using those scripts.

For example:

```bash
USE_LOCAL_DOCKER_IMAGE=1 ./scripts/docker-run-dev-server.sh
```

## Branch Layout

* [master](https://github.com/apache/libcloud-site/tree/master) - Contains website source code without the generated content.
* [asf-site](https://github.com/apache/libcloud-site/tree/asf-site) - Contains generated website content for production environment.
* [asf-staging](https://github.com/apache/libcloud-site/tree/asf-staging) - Contains generated website content for staging environment.

[1]: http://jekyllrb.com/
[2]: https://github.com/Kami/kami.github.com
