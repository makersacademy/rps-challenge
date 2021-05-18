# frozen_string_literal: true

def sign_in_and_play
  visit('/')
  fill_in('player_name', with: 'Elvis')
  click_button('Submit')
end

def sign_in_and_play_rock
  sign_in_and_play
  click_button('Rock')
end

def sign_in_and_play_paper
  sign_in_and_play
  click_button('Paper')
end

def sign_in_and_play_scissors
  sign_in_and_play
  click_button('Scissors')
end
