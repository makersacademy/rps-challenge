require 'rubygems'
require File.join(File.dirname(__FILE__), 'lib/rps.rb')

run RPSchallenge

require './lib/rps'
run Sinatra::Application
