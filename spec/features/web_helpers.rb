def sign_in
  visit ('/')
  fill_in('player1_name', with: 'Kavita')
  click_button('Submit')
end
