def sign_in
  visit '/'
  fill_in :player_1_name, with: 'Tommy'
  click_button('Start Game')
end
