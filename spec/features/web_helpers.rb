def start_game
  visit('/')
  fill_in 'p1_name', with: 'Jules'
  fill_in 'p2_name', with: 'Lee'
  click_on('submit_names')
end

def start_game_comp
  visit('/')
  fill_in 'p1_name', with: 'Jules'
  fill_in 'p2_name', with: 'Lee'
  #check('Play against computer', id: 'play_comp')
  #find('#play_comp').click
  check 'play_comp', allow_label_click: true
  click_on('submit_names')
  find('//input[@id="p1_rock"]').click
end
