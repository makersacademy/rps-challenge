def sign_in_1_player
  visit('/')
  fill_in :player_1, with: "Shaun"
  click_button "Submit"
end