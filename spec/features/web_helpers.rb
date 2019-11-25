def register_and_play
  visit('/')
  click_button "READY TO FLEX"
  fill_in :player_name, with: "player_name"
  click_button "READY TO FLEX"
end
