require 'spec_helper'

def sign_in_and_play_single_player
  visit ('/')
  click_button 'Single Player'
  fill_in :player_name, with: 'Mike'
  click_button 'submit'
end

def sign_in_and_play_multiplayer
  visit ('/')
  click_button 'Multiplayer'
  fill_in :player1_name, with: 'Mike'
  fill_in :player2_name, with: 'Jilly'
  click_button 'submit'
end


def choose_rock
  sign_in_and_play_single_player
  click_button ('Rock')
end

def choose_paper
  sign_in_and_play_single_player
  click_button ('Paper')
end

def choose_scissors
  sign_in_and_play_single_player
  click_button ('Scissors')
end
