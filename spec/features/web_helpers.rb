def start_game
  visit('/')
  fill_in 'player',	with: 'Marketeer'
  click_button 'START GAME'
end
