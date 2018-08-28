def play_for_1
  visit('/')
  click_button('one_player')
  fill_in :player_name, with: 'A'
  click_button('Submit')
end

def play_for_2
  visit('/')
  click_button('two_players')
  fill_in :player1_name, with: 'A'
  fill_in :player2_name, with: 'B'
  click_button('Submit')
end
