def sign_in_and_play(player_1, player_2)
  visit('/')
  fill_in('player_1', with: player_1)
  fill_in('player_2', with: player_2)
  click_button('Submit')
end
