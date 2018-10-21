def start_game(player_1_name: 'Player 1', player_2_name: 'Player 2')
  visit_home

  fill_in :player_1_name, with: player_1_name
  fill_in :player_2_name, with: player_2_name

  click_button 'Start the game!'
end

def visit_home
  visit('/')
end

def choose_rock
  click_button 'Rock'
end

def choose_paper
  click_button 'Paper'
end

def choose_scissors
  click_button 'Scissors'
end
