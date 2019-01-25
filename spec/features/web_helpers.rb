# Fills In Player and Round Fields
def single_player
  click_button('Single-Player')
end

def enter_names_and_play
  fill_in('player1', with: 'Paul')
  fill_in('rounds', with: '5')
  # fill_in('player2', with: 'John')
  click_button('Play!')
end

# Clicks Rock and Ok
def rock_and_ok
  click_button 'Rock'
  click_button 'Ok'
end
