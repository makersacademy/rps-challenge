def sign_in
  visit('/')
  fill_in :player_name, with: 'Vin Diesel'
  click_button 'Submit'
end
