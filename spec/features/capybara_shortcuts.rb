def single_player_sign_in
  visit('/')
  fill_in :player_1_name, with: 'Tarun'
  click_button 'Submit'
end