def sign_in
  visit('/')
  fill_in('player_1_name', with: 'Dec')
  click_button('submit')
end
