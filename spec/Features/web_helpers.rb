def register_player
  visit '/'
  fill_in :player_1_name, with: 'Tim'
  click_button('Register')
end
