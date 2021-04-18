def sign_in
  visit('/')
  fill_in :name, with: 'Player'
  click_button 'Submit'
end
