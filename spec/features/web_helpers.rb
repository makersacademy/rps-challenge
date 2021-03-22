require_relative "../../app"

def sign_in_and_play_virtual
  visit '/'
  fill_in 'player1', with: 'Caesar'
  click_button 'submit'
end

def sign_in_and_play_real
  visit '/'
  fill_in 'player1', with: 'Caesar'
  select 'Real', from: 'choose_opponent'
  click_button 'submit'
end

def rock_turn
  select 'Rock', from: 'choose_turn'
  click_on 'submit'
end

def player2_sign_in
  fill_in 'player2', with: 'Bart'
  click_button 'submit'
end
