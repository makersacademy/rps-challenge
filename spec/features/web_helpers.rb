def sign_in_and_play
  visit '/'
  fill_in 'player_name', with: 'Elle'
  click_button('Enter name')
end
