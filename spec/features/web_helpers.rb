def enter_names_and_play
  visit ('/')
  fill_in('player1', with: 'Paul')
  # fill_in('player2', with: 'John')
  click_button('Play!')
end
