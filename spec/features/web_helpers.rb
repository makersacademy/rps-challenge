def sign_in
  visit('/')
  fill_in('player_name', with: 'Lizzie')
  click_button('Submit')
end
