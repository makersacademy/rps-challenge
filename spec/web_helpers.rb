def sign_in
  visit('/')
  fill_in :player_name, with: 'Freddie'
  click_button 'Submit'
end