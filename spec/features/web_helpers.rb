def sign_in
  visit('/')
  fill_in :player_name, with: 'Tom'
  click_button 'Submit'
end