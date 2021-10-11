def start_classic_game
  visit("/")
  fill_in "name", with: "Anthony"
  click_button "Submit"
  click_button "Select"
end
