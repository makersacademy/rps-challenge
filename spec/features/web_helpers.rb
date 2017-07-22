def sign_in
  visit '/'
  fill_in :player_name, with: 'Dave'
  click_button 'Submit'
end
