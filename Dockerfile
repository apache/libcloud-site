# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Dockerfile used for building the website locally.
# NOTE: We need ruby dev headers since one of the jekyll plugins depends on C
# extension (em-websocket) so we sadly can't use -slim image.
FROM ruby:3.1.1-slim-bullseye

ARG UNAME=jekyll
ARG UID=1000
ARG GID=1000

# Add a non privileged user account we will use to run jekyll
RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME

# Set the locale - needed so jekyll works with utf8
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

ENV DEBIAN_FRONTEND=noninteractive

# NOTE: We need to manually install rvm + ruby since Ruby 1.9.3 images we
# depend on are very old and unsupported
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends build-essential \
    # Needed for jekyll compressor plugin
    openjdk-17-jdk \
    # Needed for image asset compression
    optipng jpegoptim \
    git && \
 apt-get clean

USER $UNAME

RUN gem install bundler -v "2.3.10"

EXPOSE 4000

WORKDIR /home/jekyll

# Install Ruby dependencies
COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

WORKDIR /home/jekyll/site

CMD [ "bundle", "exec", "jekyll", "serve", "--watch", "--drafts", "--trace", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]
