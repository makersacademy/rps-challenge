def sign_in
  visit('/')
  fill_in('player_1_name', with: 'Marketeer')
  click_button('Go')
end
