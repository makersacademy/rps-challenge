def sign_in
  visit '/'
  fill_in :player_name, with: 'Bob'
  click_button 'Submit'
end
