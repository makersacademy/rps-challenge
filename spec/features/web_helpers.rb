def start_game
  visit('/')
  fill_in 'p1_name', with: 'Jules'
  fill_in 'p2_name', with: 'Lee'
  click_on('submit_names')
  
end
