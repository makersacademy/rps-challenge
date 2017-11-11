def sign_in_and_play_one_player
  visit '/'
  click_button('One')
  fill_in('player_1_name', with: 'Joe')
  click_button('Submit')
end
