def play_one_player
  visit ('/')
  click_button '1 Player'
end

def submit_one_player_name
  play_one_player
  fill_in :name, with: 'Player 1'
  click_button 'Submit'
end
