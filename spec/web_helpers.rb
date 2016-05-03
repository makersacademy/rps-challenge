def sign_in
  visit '/'
  click_button 'One Player'
  fill_in :player_1_name, with: "Noah"
  click_button 'Submit'
end
