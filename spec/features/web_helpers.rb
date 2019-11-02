def sign_in
  visit('/')
  fill_in('name', with: 'Ginny')
  click_button('Enter')
end
