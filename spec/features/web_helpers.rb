def sign_in
  visit '/'
  fill_in 'player', with: 'Ollie'
  click_button 'Submit'
end
