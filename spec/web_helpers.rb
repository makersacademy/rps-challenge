def single_sign_in
  visit '/'

  click_link 'single player'
  fill_in 'player_1', with: 'Player 1'
  click_button 'Go!'
end

def multi_sign_in
  visit '/'

  click_link 'multiplayer'
  fill_in 'player_1', with: 'Player 1'
  fill_in 'player_2', with: 'Player 2'
  click_button 'Go!'
end
