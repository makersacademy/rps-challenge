def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: 'John'
  click_button 'Submit'
end