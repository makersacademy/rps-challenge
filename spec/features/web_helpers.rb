def sign_in
  visit('/')
  fill_in('name',with:'Ollie')
  click_button('Start the fun')
end