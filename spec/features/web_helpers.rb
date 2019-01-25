def begin_game
  visit('/')
  fill_in 'name_box', with: 'Player 1'
  find_button('Submit').click
end
