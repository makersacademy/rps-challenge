def sign_in_player
  visit('/')
  fill_in 'player', with: 'One'
  click_button 'Go!'
end