def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'mike'
  fill_in :player_choice, with: 'rock'
  click_button 'ROCK(/PAPER/SCISSORS) ON!'
end
