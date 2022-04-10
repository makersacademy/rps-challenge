def sign_in_and_play
  visit('/')
  fill_in("player_1_name", with: "Jordan")
  fill_in("player_2_name", with: "Kyle")
  click_button "Play!"
  click_button "Lets play!"
end
