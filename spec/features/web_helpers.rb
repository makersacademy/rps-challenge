def input_name
  visit('/')
  fill_in 'name', with: 'Gizmo'
  click_button 'Submit'
end
