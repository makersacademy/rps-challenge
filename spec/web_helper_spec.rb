def sign_in_and_play
  visit('/')
  fill_in("player_name", with: "Jordan")
  click_button "Play!"
  click_button "Im Ready"
end