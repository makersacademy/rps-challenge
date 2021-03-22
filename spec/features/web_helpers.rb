def start_game
  visit '/'
  click_on 'One Player'
  fill_in 'player_1_name', with: 'Jack'
  click_on 'Start Game!'
end

def select_scissors
  choose 'scissors'
  click_on 'Play!'
end

def player_2_select_rock
  choose 'rock'
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

def two_players_setup
  visit '/'
  click_on 'Two Players'
  fill_in 'player_1_name', with: 'Jack'
  fill_in 'player_2_name', with: 'Pam'
  click_on 'Start Game!'
end
