def enter_batman
  visit("/")
  fill_in :player_1_name, with: "Batman"
  click_button "Submit"
end
