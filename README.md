# Libcloud Website

This repository contains source code for a Libcloud website powered by
[Jekyll][1].

Note: Jekyll setup is based on my [blog's jekyll setup][2].

## System Dependencies

* Ruby >= 1.9 <= 2.1
* Gems: `bundler` (gem install bundler -v "1.3.0")
* jpgoptim (optional, for compressing images)
* optipng (optional, for compressing images)
* Node.js (optional, needed for Grunt tasks)

Note: Since the version of Jekyll we use only works with some older Ruby versions,
you are encouraged to install and use [rvm](https://rvm.io/) and use rvm to install
Ruby v1.9.3 as shown below.

```bash
rvm install 1.9.3
rvm use 1.9.3
gem install bundler -v "1.3.0"
```

## Installing Ruby dependencies

```bash
rvm use 1.9.3
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
./scripts/run-dev-server.sh
```

## Generating and Publishing the Website

```bash
./scripts/generate_site.sh
./scripts/stage-changes.sh
svn add source/*
svn add generated/*
svn commit generated/ -m "Generate website"
```

Note: ``svn add source/*`` step is important - if you don't commit source files
for the changes you made, your changes will get overwritten next time someone
else re-generates the website.

[1]: http://jekyllrb.com/
[2]: https://github.com/Kami/kami.github.com
