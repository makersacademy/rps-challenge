def solo_name_play
  visit '/'
  click_button 'singleplayer'
  fill_in 'player1', with: 'Claudia'
  click_button 'Play'
end

def multi_name_play
  visit '/'
  click_button 'multiplayer'
  fill_in 'player1', with: 'Claudia'
  fill_in 'player2', with: 'Marianne'
  click_button 'Play'
end
