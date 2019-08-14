#!/usr/bin/env sh


# installs any new/updated gems and dependencies - but if they are already installed, nothing is done
bundle install

# runs through your installed gems, and grabs the newest, allowed versions, as defined in your Gemfile
bundle update

# bypasses bundler, and installs the gem at the system level (i.e. outside your application's code bundle)
#gem install my_gem.gem

# bypasses bundler, and updates the gem at the system level (i.e. outside your application's code bundle)
#gem update my_gem.gem




# update Rubygems
# gem update --system
gem update

# update bundler
gem install bundler

# update Gemfile.lock in your project
bundler update --bundler

IP='0.0.0.0'

jekyll clean && jekyll serve --host ${IP} future --limit_posts=10 --watch --trace --incremental

