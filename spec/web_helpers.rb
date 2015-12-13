def sign_in
  visit('/')
  fill_in 'name', with: 'test'
  click_button 'submit'
end
