def sign_in
  visit('/')
  fill_in('p1name', with: 'Dan')
  fill_in('p2name', with: 'Stan')
  click_button 'Submit'
end