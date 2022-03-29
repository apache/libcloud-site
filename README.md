# Apache Libcloud Website

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
docker-run-dev-server.sh
./scripts/run-dev-server.sh
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
./scripts/stage-changes.sh
git push origin <branch>
```

[1]: http://jekyllrb.com/
[2]: https://github.com/Kami/kami.github.com
