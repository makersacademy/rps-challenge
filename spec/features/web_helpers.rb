def sign_in
  visit('/')
  fill_in :player_1_name, with: 'Player 1'
  click_button 'Submit'
end
