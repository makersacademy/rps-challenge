require 'spec_helper'

def sign_in
  visit('/')
  click_button("1 PLAYER")
  fill_in(:player_name, with: 'Player 1')
  click_button("Play!")
end

def sign_in_alt_game
  visit('/')
  click_button("1 PLAYER")
  fill_in(:player_name, with: 'Player 1')
  select('Rock, Paper, Scissors, Lizard, Spock', :from => 'game_mode')
  click_button("Play!")
end