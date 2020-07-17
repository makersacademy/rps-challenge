def sign_in
  visit('/')
  fill_in :player, with: 'Catriona'
  click_button 'Submit'
end
