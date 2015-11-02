require 'spec_helper'

def sign_in_multiplayer
	visit('/')
	click_button 'Multiplayer'
	fill_in(:player_1, with: 'dan')
  fill_in(:player_2, with: 'ed')
  click_button 'Submit'
end

def sign_in_single_player
	visit('/')
	click_button 'Single Player'
	fill_in(:player_1, with: 'dan')
  click_button 'Submit'
end
