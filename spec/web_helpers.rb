require 'capybara/dsl'
require 'selenium-webdriver'

def start_game
  include Capybara::DSL
  Capybara.default_driver = :selenium
  visit('/')
  fill_in('player_name', with: 'Rebecca')
  click_button('Go!')
end
