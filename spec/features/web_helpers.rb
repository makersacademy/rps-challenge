def sign_in_and_play
  visit('/')
  fill_in("player_1_name", with: "Red")
  fill_in("player_2_name", with: "Blue")
  click_button("Enter")
end