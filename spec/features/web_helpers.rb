def sign_in_single_player
  visit '/'
  click_button 'Single Player'
  fill_in 'player_one_name', with: :player_one
  click_button
end
