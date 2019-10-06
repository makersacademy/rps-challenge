def sign_in
  visit("/")
  fill_in "player_name", with: "Melvin"
  click_button "Play"
end
