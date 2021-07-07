def sign_in_and_play
  visit('/')
  fill_in 'player_1_name', with: 'Gareth'
  click_button 'Submit'
end
