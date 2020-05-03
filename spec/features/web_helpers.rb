def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'Tanil'
  fill_in :player2_name, with: 'Yigit'
  click_button 'submit'
end