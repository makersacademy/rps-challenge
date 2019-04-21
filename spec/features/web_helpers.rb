def sign_in_and_click_play
  visit '/'
  fill_in 'player1_name', with: 'Dominic White'
  click_button 'Play'
end
