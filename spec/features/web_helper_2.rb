def sign_in_two_player
  visit '/'
  click_button '2player'
  fill_in 'player_one_name', with: 'Jodi'
  fill_in 'player_two_name', with: 'Jess'
  click_button 'Submit'
end 
