def sign_in
  visit('/')
  fill_in('name', with: 'Charlie')
  click_button('Submit')
end
