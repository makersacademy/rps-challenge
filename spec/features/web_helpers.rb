def start_game
  visit('/')
  fill_in 'player_name', with: 'Sam'
  click_button('Submit')
  click_button('Start Game')
end
