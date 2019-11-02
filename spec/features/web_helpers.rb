def sign_in
  visit('/login')
  fill_in :player_1_name, with: 'Ali'
  click_button 'Submit'
end
