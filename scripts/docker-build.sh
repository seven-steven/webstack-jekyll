#!/bin/bash
docker run --rm -it \
  -v ${PWD}/../:/srv/jekyll \
  -v ${PWD}/../_site:/srv/jekyll/_site \
  jekyll/builder:4.2.0 /bin/bash -c '
    gem sources -r https://rubygems.org/ -a https://gems.ruby-china.com/ && \
    bundle config mirror.https://rubygems.org https://gems.ruby-china.com && \
    bundle config --delete "mirror.https://rubygems.org" && \
    jekyll build --future'
