def sign_in_p1
  visit('/')
  fill_in 'player_1', with: 'One'
  click_button 'Go!'
end