def visit_fill_name
  visit('/')
  fill_in 'name', with: 'Ian'
  click_button 'Submit'
end
