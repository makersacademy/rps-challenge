def sign_in_and_play
  visit('/')
  fill_in 'player1_name', with: 'Dragon Eyes'
  fill_in 'player2_name', with: 'Eagle Claw'
  click_button 'Submit'
end
