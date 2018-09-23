def visit_and_begin_game
  visit '/'
  fill_in 'player', with: "Carolina"
  click_button 'Play Game'
end

def visit_for_multiplayer
  visit '/'
  click_button 'I want to beat my friend'
  fill_in 'player1', with: "patrick"
  fill_in 'player2', with: "squidward"
end

def multiplayer_game_started
  visit_for_multiplayer
  click_on 'Begin'
  click_button 'Flip Coin'
end
