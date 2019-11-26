def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Myra'
  fill_in :player_2, with: 'Lara'
  click_button 'Submit'
end
