def sign_in_and_play_one_player
  visit '/'
  click_button('One')
  fill_in('player_1_name', with: 'Joe')
  click_button('Submit')
end

def sign_in_and_play_two_player
  visit '/'
  click_button('Two')
  fill_in('player_1_name', with: 'Joe')
  fill_in('player_2_name', with: 'Tom')
  click_button('Submit')
end
