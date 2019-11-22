# frozen_string_literal: true

require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'

require 'capybara'
require 'capybara/rspec'
require 'rspec'

ENV['RACK_ENV'] = 'test'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new [SimpleCov::Formatter::Console]

SimpleCov.start

# For accurate test coverage measurements, require your code AFTER 'SimpleCov.start'

require_relative '../app'
Capybara.app = Game
