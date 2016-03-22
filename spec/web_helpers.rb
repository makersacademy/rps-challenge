def sign_in
  visit('/')
  fill_in('name1', with: 'Charlie')
  fill_in('name2', with: 'Roxanne')
  click_button('Submit')
end
