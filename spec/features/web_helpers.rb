def sign_in

  visit '/'
  fill_in 'player', with: 'Anu'
  click_button 'Play!'

end
