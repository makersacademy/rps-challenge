def player_signin
  visit '/'
  fill_in('player1_name', with: 'John')
  click_button('submit')
end