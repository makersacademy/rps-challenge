require 'game'

def sign_in
  allow_any_instance_of(Game).to receive(:generate_move).and_return("PAPER")
  
  fill_in('player1', with: 'Patos')
  click_button('START')
end

def one_player_sign_in
  visit ('/')
  click_button('one player')
  sign_in
end

def two_player_sign_in
  visit ('/')
  click_button('two player')
  fill_in('player2', with: 'Quackers')
  sign_in
end

def one_player_sign_in_and_play
  one_player_sign_in
  click_button('ROCK')
end

def two_player_sign_in_and_play
  two_player_sign_in
  click_button('ROCK')
  click_button('SCISSORS')
end
