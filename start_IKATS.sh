#!/usr/bin/env bash

# This scripts allow to start IKATS

# Prerequisites check
hash docker > /dev/null 2>&1 || echo "docker must be installed to run IKATS" || exit 1
hash docker-compose > /dev/null 2>&1 || echo "docker-compose must be installed to run IKATS" || exit 1

# Get latest images
docker-compose pull

if test -d .git
then
  # `x.y.z` format or branch if no tag
  IKATS_tag=$(git show-ref --tags -d | grep $(git rev-parse HEAD)| sed -e 's@.* refs/tags/\([0-9.]\+\).*@\1@' )
  IKATS_branch=$(git rev-parse --abbrev-ref HEAD)
  IKATS_version=${IKATS_tag:-$IKATS_branch}

  # `abcd123_modified` format (`_modified` is appended if changes are detected)
  IKATS_build=$(git rev-parse --short HEAD)
  [ -n "$(git status --porcelain)" ] && IKATS_build="${IKATS_build} modified"

  # Start IKATS
  IKATS_VERSION="Sandbox version ${IKATS_version} - build ${IKATS_build}" docker-compose up --build
else
  docker-compose up --build
fi