def enter_name_and_submit    
  visit('/')
  fill_in 'player_name', with: "Ed"
  click_button 'Submit'
end

def enter_two_players_and_submit    
  visit('/')
  fill_in 'player_name', with: "Ed"
  check 'multiplayer'
  fill_in 'player2_name', with: "Ted"
  click_button 'Submit'
end