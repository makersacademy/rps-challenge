def sign_in_single
  visit('/')
  fill_in('name1',with:'Ollie')
  check('name2')
  click_button('Start the fun')
end

def sign_in_double
  visit('/')
  fill_in('name1',with:'Ollie')
  fill_in('name2',with:'Laura')
  click_button('Start the fun')
end