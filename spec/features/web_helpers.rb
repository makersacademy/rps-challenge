def sign_in_and_submit_name
  visit('/')
  fill_in :player_1_name, with: 'Samson'
  click_button 'Submit'
end
