require 'capybara'
require_relative './app/app.rb'

Capybara.app = Rochambeau
run Rochambeau
