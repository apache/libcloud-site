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
# NOTE: Our current website setup relies on very old jekyll + ruby version
FROM debian:bullseye-slim

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

# Needed for old Ruby which still relies on libssl1.0-dev
RUN echo "deb http://deb.debian.org/debian/ stretch main contrib non-free" >> /etc/apt/sources.list

# NOTE: We need to manually install rvm + ruby since Ruby 1.9.3 images we
# depend on are very old and unsupported
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    procps curl ca-certificates build-essential git \
    # Ruby build dependencies
    gawk autoconf automake bison libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev pkg-config sqlite3 zlib1g-dev libgmp-dev libreadline-dev libssl1.0-dev \
    # Needed for jekyll compressor plugin
    default-jre \
    # Needed for pygments ruby plugin
    python2.7 && \
  apt-get clean

RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1

USER $UNAME
RUN whoami

# Install RVM + Ruby 2.1.0
# Needed to install old ruby version - https://github.com/rvm/rvm/issues/4690
RUN curl -sSL https://get.rvm.io | bash -s -- --version 1.29.7

RUN /bin/bash -l -c "rvm install 2.1.0 --rubygems 2.7.9"
RUN /bin/bash -l -c "rvm install 2.1.0 --rubygems 2.7.9"
RUN /bin/bash -l -c "rvm use ruby-2.1.0 --default"

# Install old bundler version
RUN /bin/bash -l -c "gem install bundler -v '1.3.0'"

EXPOSE 4000

WORKDIR /home/jekyll

COPY Gemfile .
COPY Gemfile.lock .

RUN /bin/bash -l -c "bundle install"

RUN echo "source /etc/profile.d/rvm.sh" >> ~/.bashrc

WORKDIR /home/jekyll/site

CMD [ "bundle", "exec", "jekyll", "serve", "--watch", "--drafts", "--trace", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]
