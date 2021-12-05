def sign_in
  visit ('/')
  fill_in('player1', with: 'Patos')
  click_button('START')
end