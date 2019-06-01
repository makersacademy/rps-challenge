def one_player_game
  visit('/')
  click_button('One Player Game') 
end 

def start_one_player_game
  one_player_game
  fill_in('Enter your name', with: 'Ed')
  click_button('Start the game')  
end

def one_player_game_played
  start_one_player_game 
  click_button('ROCK')
end
