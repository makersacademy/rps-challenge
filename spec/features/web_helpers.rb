def start_game
  visit "/"
  fill_in :name, with: "Broseph"
  click_button "BATTLE"
end
