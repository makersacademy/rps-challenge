def sign_in
  visit('/')
  fill_in :player_1_name, with: 'Colin'
  fill_in :player_2_name, with: 'Robot'
  click_button 'PLAY GAME!'
end
