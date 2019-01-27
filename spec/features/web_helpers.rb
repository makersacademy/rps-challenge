def enter_name_play_game
  visit('/')
  fill_in 'name', with: 'Wilson'
  click_button 'Go!'
end
