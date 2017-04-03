def sign_in_and_play
  visit('/')
  fill_in('player_1_name', :with => DEFAULT_PLAYER_NAME)
  click_button('Play')
end
