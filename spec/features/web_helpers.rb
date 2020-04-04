def register_and_play
  visit '/'
  fill_in 'player1_name', with: 'Phil'
  click_button 'Register'
end
