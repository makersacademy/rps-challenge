def sign_in_and_play
  visit('/')
  fill_in 'player', with: 'Valentina'
  click_button 'Go!'
end