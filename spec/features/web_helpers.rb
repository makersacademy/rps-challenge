def single_player_game
  visit('/')
  fill_in :player1, with: 'John'
  click_button 'Submit'
end
