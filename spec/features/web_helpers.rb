def sign_in_and_submit
  visit '/'
  fill_in 'name', with: 'Louis'
  click_button 'Submit'
end 
