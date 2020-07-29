def sign_in_and_play
  visit('/')
  click_button 'Singleplayer'
  fill_in :name, with: 'Hibo'
  click_button 'Play!'
end

def multiplayer_sign_in
  visit('/')
  click_button 'Multiplayer'
  fill_in :player_1_name, with: 'Player 1'
  fill_in :player_2_name, with: 'Player 2'
  click_button 'Play!'
end
