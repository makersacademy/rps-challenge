def sign_in
  visit('/')
  fill_in :player1, with: 'The Hulk'
  click_button 'Submit'
end
