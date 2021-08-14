def sign_in_and_start
  visit '/'
  fill_in 'name', with: 'Bob'
  click_button 'Go' 
end
