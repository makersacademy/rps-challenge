def sign_in
  visit('/')
  fill_in :player_name, with: 'simona'
  click_button 'Submit'
end
