def fill_in_name
  visit ('/')
  fill_in :player_name, with: 'Harry'
  click_button 'Submit'
end