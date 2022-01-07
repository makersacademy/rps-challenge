def start_game
  visit ('/')
  fill_in :player_name, with: 'Gwen'
  click_button 'Start Game'
end