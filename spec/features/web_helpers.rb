def sign_in
  visit('/')
  fill_in :name, with: 'Jonny'
  click_button 'Submit'
end
