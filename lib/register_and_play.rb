def register_and_play
  visit('/rps-game')
  fill_in('player1', with: 'A')
  fill_in('player2', with: 'M')
  click_button('Submit')
end