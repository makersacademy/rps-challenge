require 'spec_helper.rb'

def register_one_player
  visit('/')
  click_button('1 player')
  fill_in('player_1', with: 'Bob')
  click_button('Start')
end

def register_two_players
  visit('/')
  click_button('2 players')
  fill_in('player_1', with: 'Bob')
  fill_in('player_2', with: 'Fred')
  click_button('Start')
end
