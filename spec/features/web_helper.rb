def sign_in
  visit('/')
  fill_in 'name', with: 'John'
  click_on('Go')
end
