def start_game
  visit('/')
  fill_in('player_name', with: 'Rebecca')
  click_button('Go!')
end

def computer_picks_rock
  srand(2)
end

def computer_picks_scissors
  srand(3)
end

def computer_picks_paper
  srand(10)
end

def computer_picks_lizard
  srand(1)
end
