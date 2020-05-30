def enter_name_and_submit
  visit('/') 
    fill_in('name', with: 'Dave')
    click_button("Let's play!")
end