def sign_in
  visit('/')
  fill_in :player_name, with: 'Alexi'
  click_button 'Submit'
end 
