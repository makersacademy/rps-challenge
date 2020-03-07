def start_game
  visit ('/')
  fill_in 'player_name', with: 'Josie'
  click_button 'Play!'
end
