ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/rps_web.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'


Capybara.app = Rps
