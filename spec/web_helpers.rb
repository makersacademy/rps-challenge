def log_in
  visit('/')
  fill_in :player_1_name, with: 'Xain'
  click_button 'Log in!'
end

# def play_game
#   click_button 'Rock' || click_button 'Paper' || click_button 'Scissors'
# end
