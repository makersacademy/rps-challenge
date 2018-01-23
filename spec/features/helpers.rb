def submit_single_name
  visit '/single-player'
  fill_in :player1_name, with: 'Player'
  click_button 'Submit'
end

def submit_two_names
  visit '/multiplayer'
  fill_in :player1_name, with: 'Player1'
  fill_in :player2_name, with: 'Player2'
  click_button 'Submit'
end
