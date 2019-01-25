def enter_names_and_play
  fill_in('player1', with: 'Paul')
  fill_in('rounds', with: '5')
  # fill_in('player2', with: 'John')
  click_button('Play!')
end

def rock_and_ok
  click_button 'Rock'
  click_button 'Ok'
end
