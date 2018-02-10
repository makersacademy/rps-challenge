def sign_in_and_play
  visit('/')
  fill_in 'player', with: 'Josu'
  click_button('Start round!')
end