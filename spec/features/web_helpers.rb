def sign_in
  visit('/')
  fill_in "player", with: 'dave'
  click_button 'Submit'
end