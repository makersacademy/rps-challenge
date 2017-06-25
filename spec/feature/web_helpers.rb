def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Tom'
  click_button('Play')
end
