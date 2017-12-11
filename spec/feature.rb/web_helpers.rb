def sign_in_and_ready_up
  visit('/')
  fill_in 'player1', with: 'Player1'
  fill_in 'player2', with: 'Player2'
  click_button 'Submit'
end