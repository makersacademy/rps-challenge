def sign_in
  visit '/'
  fill_in 'player', with: 'Max'
  click_on 'Submit'
end