def sign_in
  visit('/')
  fill_in 'player_1', with: 'Gina'
  click_button('Save')
end 