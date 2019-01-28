def start_game
  visit('/')
  fill_in :player_1_name, with: 'Sherif'
  click_button 'Start'
end
