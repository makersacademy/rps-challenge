def sign_in_one_player
  visit '/'
  click_button '1player'
  fill_in 'player_name', with: 'Jodi'
  click_button 'Submit'
end
