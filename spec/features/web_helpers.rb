def start_game
  visit "/"
  fill_in :player, with: "Broseph"
  click_button "BATTLE"
end
