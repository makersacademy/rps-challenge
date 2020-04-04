def dave_sign_in
  visit '/'
  fill_in('name', with: 'Dave')
  click_button('Go!')
end

def jim_sign_in
  visit '/'
  fill_in('name', with: 'Jim')
  click_button('Go!')
end
