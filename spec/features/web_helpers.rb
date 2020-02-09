def sign_in
  visit('/')
  fill_in "player_1", with: 'diana'
  fill_in "player_2", with: 'dave'
  click_button 'Submit'
end