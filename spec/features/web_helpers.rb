def begin_one_player_game
  visit('/')
  find_button('One Player').click
  fill_in 'name_box', with: 'Player 1'
  find_button('Submit').click
end
