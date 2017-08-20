def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'David')
  click_button('Submit')
  visit('/pick_weapon')
end
