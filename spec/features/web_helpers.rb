def visit_and_submit_name
  visit('/')
  fill_in 'name', with: 'Toby'
  click_button 'Submit'
end