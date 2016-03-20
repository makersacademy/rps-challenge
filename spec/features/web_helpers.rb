def single_player_sign_in
  visit '/'
  click_button('One player')
  fill_in('player1', :with => 'Shane')
  fill_in('points', :with => 10)
  click_button('Play')
end
