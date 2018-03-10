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
  check ('Play against computer?')
  click_on('submit_names')
end
