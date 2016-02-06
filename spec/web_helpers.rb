def sign_in
  visit '/'
  fill_in('name', with: 'John the rockiest paper scissor')
  click_button('Submit')
end
