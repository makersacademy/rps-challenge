def register_and_play
  visit '/'
  fill_in 'player1_name', with: 'Phil'
  click_button 'Register'
end

def register_two_and_play
  visit '/'
  fill_in 'player1_name', with: 'Phil'
  fill_in 'player2_name', with: 'Su'
  click_button 'Register'
end
