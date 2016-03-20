def visit_and_register
  visit('/')
  fill_in('name', with: 'Frank')
  click_button('Register')
end
