def sign_in
  visit('/')
  fill_in :player_name, with: 'Jonny'
  click_button 'Submit'
end