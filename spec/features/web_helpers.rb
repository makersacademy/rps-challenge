def sign_in_and_play
  visit("/")
  fill_in :player_1_name, with: "Stacy"
  click_button "Enter"
end