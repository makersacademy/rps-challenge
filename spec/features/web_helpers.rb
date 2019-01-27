def sign_in
  visit '/'
  fill_in :player_name, with: 'Neville'
  click_button 'Submit'
end
