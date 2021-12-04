def enter_name
  visit '/'
  fill_in 'name', with: "Paul Dirac"
  click_button 'Go!'
end