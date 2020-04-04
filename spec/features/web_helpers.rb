def register_and_play
  visit '/'
  fill_in 'player1_name', with: 'Phil'
  fill_in 'player2_name', with: 'Su'
  click_button 'Register'
end
