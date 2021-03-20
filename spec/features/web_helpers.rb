def start_game
  visit '/'
  fill_in 'player_1_name', with: 'Jack'
  click_on 'Start Game!'
end

def select_scissors
  choose 'scissors'
  click_on 'Play!'
end

def win_scenario
  start_game
  srand 1
  select_scissors
end

def lose_scenario
  start_game
  srand 0
  select_scissors
end

def draw_scenario
  start_game
  srand 3
  select_scissors
end
