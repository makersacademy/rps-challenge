def sign_up
  visit "/"
  fill_in "player_name", with: "AAA"
  click_button "Submit"
end
