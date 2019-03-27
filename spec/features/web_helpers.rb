def fill_in_name
  visit('/rps')
  fill_in :player_name, with: 'Amy'
  click_button 'Play!'
end
