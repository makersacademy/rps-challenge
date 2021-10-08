def create_game
  visit "/"
  fill_in :player_name, with: "Buffon"
  click_button "Continue"
end