def enter_name_and_play
  visit "/"
  click_button "Single Player"
  fill_in "name_1", with: "Alice"
  click_button "Play!"
end

def enter_two_names_and_play
  visit "/"
  click_button "Multiplayer"
  fill_in "name_1", with: "Alice"
  fill_in "name_2", with: "Bob"
  click_button "Play!"
end
