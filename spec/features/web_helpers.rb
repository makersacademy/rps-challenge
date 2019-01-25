def sign_in
  visit('/')
  fill_in('p1name', with: 'Dan')
  click_button 'Submit'
end