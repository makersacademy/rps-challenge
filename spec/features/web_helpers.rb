def enter_name_submit
  visit('/')
  fill_in('enter-name-one', with: 'Jamiroquai')
  fill_in('enter-name-two', with: 'Sting')

  click_button('Submit')
end
