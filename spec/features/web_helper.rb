def sign_in
  visit('/')
  fill_in :player_name, with: 'Mark'
  click_button 'Submit'
end
