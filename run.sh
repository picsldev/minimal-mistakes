#!/usr/bin/env sh

# update Rubygems
gem update --system

# update bundler
gem install bundler

# update Gemfile.lock in your project
bundler update --bundler

IP='0.0.0.0'

jekyll clean && jekyll serve --host ${IP} future --limit_posts=10 --watch --trace
