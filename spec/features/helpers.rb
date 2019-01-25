def fill_name_in
  visit('/')
  fill_in('name', with: 'test')
  click_button('OK')
end
