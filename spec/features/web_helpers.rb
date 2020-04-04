def dave_sign_in
  visit '/'
  fill_in('name', with: 'Dave')
  click_button('Start Single-player!')
end

def jim_sign_in
  visit '/'
  fill_in('name', with: 'Jim')
  click_button('Start Single-player!')
end
