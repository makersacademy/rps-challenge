def sign_in_and_play(player_1)
  visit '/'
  click_link 'register'
  fill_in 'player1', with: player1
  click_button 'Submit'
end
