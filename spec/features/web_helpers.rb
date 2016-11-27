def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Mike'
  fill_in :player_choice, with: 'ROCK'
  click_button 'ROCK/PAPER/SCISSORS ON!'
end
