def enter_name
  visit "/"
  fill_in "player_name", with: "Powders"
  click_button "Go!"
end
