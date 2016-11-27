def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Mike'
  click_button 'Rock (Paper, Scissors) on!'
end
