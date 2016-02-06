def sign_in
  visit('/')
  fill_in('Name', with: 'Emma')
  click_button('Submit')
end
