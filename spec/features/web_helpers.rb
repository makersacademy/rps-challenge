def sign_in
  visit ('/')
  fill_in 'name', with: 'Joe'
  click_button 'Submit'
end 