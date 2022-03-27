#!/usr/bin/env bash

cd source
bundle exec jekyll build

cd ..
rsync -vurt --delete --exclude=".git/" --exclude="*.log" source/_site/* output/
rm -rf source/_site
rm -rf _site
cp source/.htaccess output/.htaccess
