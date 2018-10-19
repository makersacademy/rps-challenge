def sign_in
  visit('/')
  fill_in :name, with: 'Dave'
  click_button 'Submit'
end
