def sign_in
  visit('/')
  fill_in :player1_name, with: 'Colin'
  fill_in :player2_name, with: 'Robot'
  click_button 'PLAY GAME!'
end
