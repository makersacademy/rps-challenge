def start_game
  visit('/')
  fill_in('Enter your name', with: 'Ed')
  click_button('Start the game')  
end
