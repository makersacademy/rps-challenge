def sign_in
  visit('/')
  fill_in :player1_name, with: 'Judy'
  click_button 'Submit'

end
