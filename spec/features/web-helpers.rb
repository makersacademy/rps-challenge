def enter_name_and_start_game
  visit "/"
  fill_in "name", with: "Charlotte"
  click_button "Start game"
end
