def play_for_1
  visit('/')
  fill_in :num_players, with: '1'
  click_button('Submit')
  fill_in :player_name, with: 'A'
  click_button('Submit')
end

def play_for_2
  visit('/')
  fill_in :num_players, with: '2'
  click_button('Submit')
  fill_in :player1_name, with: 'A'
  fill_in :player2_name, with: 'B'
  click_button('Submit')
end