require 'spec_helper.rb'

def register_and_play
  visit('/')
  fill_in('player_1', with: 'Bob')
  click_button('Start')
end
