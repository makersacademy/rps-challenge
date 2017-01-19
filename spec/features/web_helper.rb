def single_sign_in_and_play
  visit '/'
  click_button 'Singleplayer'
  fill_in :player_1_name, with: 'Player 1'
  click_button 'Submit'
end

def multi_sign_in_and_play
  visit '/'
  click_button 'Multiplayer'
  fill_in :player_1_name, with: 'Player 1'
  fill_in :player_2_name, with: 'Player 2'
  click_button 'Submit'
end
