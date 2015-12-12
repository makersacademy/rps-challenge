def single_player_login
  visit '/'
  fill_in :player_name, with: 'Michael'
  click_button('Play!')
end
