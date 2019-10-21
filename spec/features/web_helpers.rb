def sign_in
  visit('/')
  fill_in :player_name, with: 'Kirk'
  click_button 'Submit'
end
