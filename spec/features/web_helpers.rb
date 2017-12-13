def signing_in
  visit '/'
  fill_in 'player1', with: 'Marie'
  click_button 'play!'
end
