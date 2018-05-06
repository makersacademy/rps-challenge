def single_player_game
  visit('/')
  fill_in :player1, with: 'John'
  click_button 'Submit'
end

def two_player_game
  visit('/')
  fill_in :player1, with: 'Harry'
  select('Two Player', :from => 'mode')
  fill_in :player2, with: 'Kitty'
  click_button 'Submit'
end

def player_win
  srand(2)
  click_link('paper')
  visit('/result')
end

def ai_win
  srand(2)
  click_link('scissors')
  visit('/result')
end

def draw
  srand(2)
  click_link('rock')
  visit('/result')
end
