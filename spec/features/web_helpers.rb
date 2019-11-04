def fill_in_and_submit
  visit '/'
  fill_in :player_1_name, with: 'Ben'
  fill_in :player_2_name, with: 'Amy'
  click_button 'Submit'
end
