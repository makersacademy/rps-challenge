def sign_in_and_confirm
  visit '/'
  fill_in :player_name, with: 'Rianne'
  click_button 'Submit'
end 
