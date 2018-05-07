def sign_in
  visit('/')
  fill_in :player, with: 'Charlene'
  click_button 'Submit'
end
