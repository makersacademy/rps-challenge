def enter_name
  visit '/'
  fill_in('name', with: 'Anna')
  click_button('Start')
end
