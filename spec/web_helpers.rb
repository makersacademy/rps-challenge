def sign_in_and_play
  visit('/')
  fill_in :player_one_name, with: 'Smoky'
  fill_in :player_two_name, with: 'Penelope'
  click_button 'Play Game'
end

def visual_debug

  require 'capybara/dsl'
  require 'selenium-webdriver'
  include Capybara::DSL
  Capybara.default_driver = :selenium

end