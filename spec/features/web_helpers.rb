def sign_in
  visit '/'
  fill_in('name', with: 'Kornelia')
  fill_in('name', with: 'Computer')
  click_button('Submit')
end
