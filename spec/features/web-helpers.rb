def enter_name_and_start_game
  srand(3)
  visit "/"
  fill_in "name", with: "Charlotte"
  click_button "Start game"
end
