def player_vs_computer
  visit('/')
  fill_in :player_1_name, with: 'Ben'
  click_button 'Play Against Computer'
end