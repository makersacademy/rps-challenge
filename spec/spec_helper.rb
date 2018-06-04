require 'capybara'
require 'capybara/rspec'
require 'rspec'

RSpec.configure do |config|

  ENV['RACK_ENV'] = 'test'

  require File.join(File.dirname(__FILE__), '..', 'app.rb')

  Capybara.app = App
end
