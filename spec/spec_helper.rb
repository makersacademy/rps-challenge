# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start

Coveralls.wear!   #Is this required?
# run `open coverage/index.html` from the command line to view details


ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')



require 'byebug'
require 'capybara/rspec'
require 'features/web_helpers'
require 'player'              # Add these for  the classes later
require 'game'              # Add these for  the classes later

Capybara.app = RPS
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

RSpec.configure do |config|
  config.include Capybara::DSL
 # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
config.order = :random

end