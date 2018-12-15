def register
  visit('/')
  fill_in('name', with: 'Celine')
  click_button('Submit')
end
