def sign_in
  visit '/'
  fill_in 'name', with: 'Laurence'
  click_button 'Submit'
end
