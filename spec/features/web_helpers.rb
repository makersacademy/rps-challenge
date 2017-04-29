def sign_in
  visit('/')
  fill_in 'name', with: 'User'
  click_button 'Enter name'
end
