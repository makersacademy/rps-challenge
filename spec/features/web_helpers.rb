def sign_in
  visit('/')
  fill_in('name', with: 'Chocolate Rain')
  click_on('Submit')
end
