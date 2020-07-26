def sign_in
  visit('/')
  fill_in :player_1_name, with: "Jake"
  click_button 'Enter'
end