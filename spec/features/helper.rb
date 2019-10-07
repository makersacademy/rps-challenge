def enter_names
  visit('/')
  fill_in :player_1_name, with: 'Jordan'
  fill_in :player_2_name, with: 'Shay'
  click_button 'Submit'
end
