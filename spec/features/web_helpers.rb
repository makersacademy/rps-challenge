def sign_in
  visit('/')
  fill_in :name, with: 'Player 1'
  click_button 'Submit'
end
