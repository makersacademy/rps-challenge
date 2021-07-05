# Selects singleplayer
def single_player
  click_button('Single-Player')
end

# Fills in One Player and 5 rounds
def enter_one_name_and_play
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

# Selects multiplayer
def multi_player
  click_button('Multi-Player')
end

# Fills in Two Player and 5 rounds
def enter_two_names_and_play
  fill_in('player1', with: 'Paul')
  fill_in('player2', with: 'John')
  fill_in('rounds', with: '5')
  click_button('Play!')
end

# Player 1 Picks Scissors, Player 2 Picks Rock
def scissors_and_rock
  click_button 'Scissors'
  click_button 'Rock'
  click_button 'Ok'
end
