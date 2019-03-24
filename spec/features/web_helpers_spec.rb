def register_2_players_and_start_game
  visit '/'
  fill_in "player1",	with: "Player1"
  fill_in "player2",	with: "Player2"
  click_button 'Start game'

end

def register_1_player_against_computer
  visit '/'
  fill_in "player1",	with: "Player1"
  check('computer2')
  click_button 'Start game'
end

def register_computer_against_1_player
  visit '/'
  check('computer1')
  fill_in "player2",	with: "Player2"
  click_button 'Start game'
end