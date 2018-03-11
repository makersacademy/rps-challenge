def sign_in_player1_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  click_button 'Play!'
end
