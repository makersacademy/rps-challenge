def sign_in_and_enter_names
  visit('/')
  fill_in :player_1_name, with: 'Mark'
  fill_in :player_2_name, with: 'Computer'
  click_button 'Play'
end