def enter_name_click_submit
  visit('/')
  fill_in :player_1_name, with: 'Peter'
  click_button 'Submit'
end