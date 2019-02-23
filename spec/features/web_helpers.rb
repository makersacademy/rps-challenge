def sign_in_and_click_play

  visit '/'
  fill_in 'player1_name', with: 'Ozzy Osbourne'
  click_button 'Play'

end
