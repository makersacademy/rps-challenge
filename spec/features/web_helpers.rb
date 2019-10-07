def sign_in_single_player
  visit '/'
  fill_in 'player_name', with: 'Filbert'
  click_button('Go')
end
