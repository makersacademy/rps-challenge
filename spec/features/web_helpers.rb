def two_player_mode
  visit('/')
  choose('two')
  click_button 'Next'
  fill_in :player_1_name, with: 'Player1'
  fill_in :player_2_name, with: 'Player2'
  click_button('Start')
end

def turn_for_two_players
  choose('rock1')
  choose('scissors2')
  click_button('Who wins?')
end