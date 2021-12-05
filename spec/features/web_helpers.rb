require 'game'

def sign_in
  # should i be stubbing on capybara? because it's not testing logic?
  allow_any_instance_of(Game).to receive(:generate_move).and_return("PAPER")
  
  fill_in('player1', with: 'Patos')
  click_button('START')
end

def two_player_sign_in
  fill_in('player2', with: 'Quackers')
  sign_in
end

def one_player_sign_in_and_play
  visit ('/')
  click_button('one player')
  sign_in
  click_button('ROCK')
end

def two_player_sign_in_and_play
  visit ('/')
  click_button('two player')
  two_player_sign_in
  click_button('ROCK')
  click_button('SCISSORS')
end
