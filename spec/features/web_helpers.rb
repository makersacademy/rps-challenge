def sign_in
  visit '/'
  fill_in('player1', with: 'Steve')
  click_button('submit')
end
