def one_player_game
  visit('/')
  click_button('One Player Game') 
end 

def two_player_game
  visit('/')
  click_button('Two Player Game') 
end 

def start_one_player_game
  one_player_game
  fill_in('name', with: 'Ed')
  click_button('Start the game')  
end

def start_two_player_game
  two_player_game
  fill_in('name1', with: 'Ed')
  fill_in('name2', with: 'Judith')
  click_button('Start the game')  
end

def one_player_game_played
  start_one_player_game 
  click_button('ROCK')
end

def two_player_game_played
  start_two_player_game 
  click_button('ROCK')
  click_button('SCISSORS')
end
