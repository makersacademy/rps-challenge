def enter_name_and_submit
  visit('/')
  fill_in("player_name", with: "Rubber Duck")
  click_button "Submit name"
end
