def enter_name
  visit '/'
  fill_in "name", with: 'Pusheen'
  click_button 'Go'
end
