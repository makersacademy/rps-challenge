def start_game
  visit('/')
  fill_in :player_1, with: 'david'
  click_button 'Submit'
end
