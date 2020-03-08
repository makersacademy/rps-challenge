def start_game
  visit ('/')
  fill_in 'player_name', with: 'Josie'
  click_button 'Play!'
end

def play_rock
  start_game
  click_button '👊🏼'
  click_button 'Ok'
end
