def enter_name_and_play
  visit('/')
  fill_in :player_1_name, with: 'Emily'
  click_button 'Click me!'
end 