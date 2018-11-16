def sign_in
  visit '/'
  fill_in 'name', with: "Jo Brown"
  click_button 'Enter name'
end
