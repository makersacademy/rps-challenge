def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'Tanil'
  click_button 'submit'
end