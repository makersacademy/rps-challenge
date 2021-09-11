def register_name
  visit('/')
  fill_in('name', with: 'Ed')
  click_button('Register')
end
