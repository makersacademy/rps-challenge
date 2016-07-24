def log_in
  visit '/'
  fill_in :player_1_name, with: 'Sal'
  click_button 'Submit'
end

def log_in_and_new_game
  log_in
  click_button "New Game"
end
