require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helpers'

def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Tiago'
  #fill_in :player_2_name, with: 'Mittens'
  click_button 'Register'
end