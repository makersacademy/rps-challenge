require 'rspec'
require 'capybara/rspec'
require './lib/rps_web'

Capybara.app = Rps_web

# Rspec.configure do |config|
#
# end
