def sign_in_and_go
  visit ('/')
  fill_in :player1, with: 'Marketeer'
  click_button 'play!'
end
