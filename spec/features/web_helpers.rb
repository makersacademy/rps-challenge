def solo_name_play
  visit '/'
  click_button '1 player'
  fill_in 'player', with: 'Claudia'
  click_button 'Play'
end

def multi_name_play
  visit '/'
  click_button '2 players'
  fill_in 'player1', with: 'Claudia'
  fill_in 'player2', with: 'Marianne'
  click_button 'Play'
end
