require 'rubygems'
require File.join(File.dirname(__FILE__), 'app.rb')
ENV['RACK_ENV'] = 'production'

run RockPaperScissors
