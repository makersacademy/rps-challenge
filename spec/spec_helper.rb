# frozen_string_literal: true

require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'

require File.join(File.dirname(__FILE__), '..', 'app.rb')
ENV['RACK_ENV'] = 'test'
require 'features/web_helpers.rb'
Capybara.app = Rps

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
                                                                 SimpleCov::Formatter::Console
                                                                 # Want a nice code coverage website? Uncomment this next line!
                                                                 # SimpleCov::Formatter::HTMLFormatter
                                                               ])
SimpleCov.start

# For accurate test coverage measurements, require your code AFTER 'SimpleCov.start'

RSpec.configure do |config|
  config.after(:suite) do
  end
end
