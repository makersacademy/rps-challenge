require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'simplecov'
require 'simplecov-console'

require 'features/web_helpers'
require_relative '../app.rb'

ENV['RACK_ENV'] = 'test'

Capybara.app = App
Capybara.default_driver = :selenium
Selenium::WebDriver.logger.level = :error

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
])
SimpleCov.start

