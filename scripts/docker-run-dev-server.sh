#!/usr/bin/env bash
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

USE_LOCAL_DOCKER_IMAGE="${USE_LOCAL_DOCKER_IMAGE:-"0"}"

IMAGE_NAME_LOCAL="libcloud-site-dev"
IMAGE_NAME_REMOTE="ghcr.io/apache/libcloud-site-dev:latest"

if [ "${USE_LOCAL_DOCKER_IMAGE}" = "1" ]; then
    echo "Will use and build local Docker image"
    IMAGE_NAME="${IMAGE_NAME_LOCAL}"

    docker build --build-arg UID="$(id -u)" --build-arg GID="$(id -g)" -f Dockerfile -t "${IMAGE_NAME}" . --progress=plain
else
    echo "Will use pre-built Docker image from ghcr.io"
    IMAGE_NAME="${IMAGE_NAME_REMOTE}"
fi

docker run -p 4000:4000 --rm -v "$(pwd)":/home/jekyll/site -it "${IMAGE_NAME}" bash -c -l 'cd source ; bundle exec jekyll serve --watch --drafts --trace --force_polling -H 0.0.0.0 -P 4000'
