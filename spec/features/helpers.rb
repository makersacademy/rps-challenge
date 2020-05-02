def sign_in
  visit('/')
  fill_in('name', with: 'Dec')
  click_button('submit')
end
