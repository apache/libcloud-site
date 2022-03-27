#!/usr/bin/env bash

cd source
bundle exec jekyll build

cd ..
rsync -vurt --delete --exclude=".svn/" --exclude="*.log" source/_site/* generated/
rm -rf source/_site
rm -rf _site
cp source/.htaccess generated/.htaccess
