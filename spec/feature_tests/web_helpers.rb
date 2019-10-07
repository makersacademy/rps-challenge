def sign_in
  visit('/')
  fill_in :name, with: 'Callum'
  click_button 'Submit'
end
