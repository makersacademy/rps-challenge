<<<<<<< HEAD
require 'rspec'
require 'capybara/rspec'
require './lib/rps_web'

Capybara.app = Rps_web

# Rspec.configure do |config|
#
# end
=======
require 'byebug'
require 'capybara/rspec'
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
>>>>>>> a11d2128e9605c16587bc9377cdee2684f2ed4ae
