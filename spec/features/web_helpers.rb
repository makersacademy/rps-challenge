def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Ruby'
  click_button 'Submit'
end

def start_game_and_choose_rock
sign_in_and_play
click_button 'Start Game'
fill_in :player_choice, with: 'rock'
click_button 'Submit'
end
