def sign_in
  visit('/')
  fill_in('player_1_name', with: 'Dec')
  click_button('submit')
end

def two_player_sign_in
  visit('/')
  fill_in('player_1_name', with: 'Dec')
  fill_in('player_2_name', with: 'Dan')
  click_button('submit')
end
