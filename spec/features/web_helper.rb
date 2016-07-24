

def sign_in
  visit '/'
  fill_in 'name', with: 'Prashant'
  click_button 'Submit'
end
