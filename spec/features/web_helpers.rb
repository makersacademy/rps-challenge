def begin_game
  visit "/"
  fill_in("player_name", with: "Chris")
  click_button("Submit")
  click_button("Begin Game")
end
