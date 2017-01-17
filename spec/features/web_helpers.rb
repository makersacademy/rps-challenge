def sign_in_and_play
  visit "/"
  fill_in "player_one_name", with: "David Miller"
  click_button "Play"
end
