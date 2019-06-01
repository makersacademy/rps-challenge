def one_player_game
  visit('/')
  click_button('One Player Game') 
end 

def start_game
  visit('/')
  fill_in('Enter your name', with: 'Ed')
  click_button('Start the game')  
end

def game_played
  visit('/')
  fill_in('Enter your name', with: 'Ed')
  click_button('Start the game')  
  click_button('ROCK')
end
