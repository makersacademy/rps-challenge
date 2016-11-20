require 'rubygems'
require File.join(File.dirname(__FILE__), 'app.rb')
web: bundle exec puma -C config/puma.rb

run RPS
