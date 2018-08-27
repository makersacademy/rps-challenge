def enter_name_and_play
  visit('/')
  fill_in :player_name, with: 'Daniel'
  click_button 'Go!'
end
