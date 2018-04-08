def sign_in
  visit('/')
  fill_in('player_name', with: 'Joe')
  click_button('OK')

end
