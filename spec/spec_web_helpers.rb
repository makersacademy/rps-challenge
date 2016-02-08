def enter_name_click_submit
  visit '/'
  fill_in 'name', with: 'Michael'
  click_button 'Submit'
end
