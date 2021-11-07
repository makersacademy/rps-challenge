def sign_in_and_enter_names
  visit('/')
  fill_in :player_1_name, with: 'Mark'
  click_button 'Play'
end