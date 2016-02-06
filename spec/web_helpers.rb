def sign_in
  visit('/')
  fill_in :player, with: 'reiss'
  click_button('Continue')
end