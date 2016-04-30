def sign_in
  visit('/')
  fill_in :player_name, with: 'Matt'
  click_button 'Submit'
end
