def enter_name_submit
  visit('/')
  fill_in('enter-name', with: 'Jamiroquai')
  click_button('Submit')
end
