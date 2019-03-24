def enter_name
  visit '/'
  fill_in "name", with: 'Kirby'
  click_button 'Go'
end
