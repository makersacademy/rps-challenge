def sign_in
  visit('/')
  fill_in('p1_name', with: 'Dan')
  fill_in('p2_name', with: 'Stan')
  click_on 'Submit'
end