#!/usr/bin/env bash

usage() {
  echo "Usage: ${0} [version_tag]"
  exit 1
}

if [ -z ${1} ]; then
  usage
fi

if [ ! -f "conf/valhalla.json" ]; then
  wget -q "https://raw.githubusercontent.com/valhalla/conf/master/valhalla.json" -O conf/valhalla.json
fi

docker build -f Dockerfile \
  --tag mapzen/ot-matcher:${1} \
  --tag mapzen/ot-matcher:latest \
  --force-rm \
  .

docker push mapzen/ot-matcher

