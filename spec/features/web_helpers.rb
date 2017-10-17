def single_player_start
  visit('/')
  click_button 'Single Player'
  fill_in :player_1, with: 'Ainsley'
  click_button 'play'
end
  
def multiplayer_start
  visit('/')
  click_button 'Multiplayer'
  fill_in :player_1, with: 'Ainsley'
  fill_in :player_2, with: 'TestPlayer'
  click_button 'play'
end

