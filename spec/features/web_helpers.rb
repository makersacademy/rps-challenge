def sign_in
  visit '/'
  fill_in 'name', with: 'George'
  click_button('Submit')
end
