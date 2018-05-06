ENV['RACK_ENV'] = 'test'

require_relative '../app.rb'
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/computer.rb'

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'simplecov'
require 'simplecov-console'

Capybara.app = Rps

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
