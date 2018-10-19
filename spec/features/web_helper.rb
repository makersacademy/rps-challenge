def start_game
  visit ('/')
  fill_in :player_1_name, with: "Ray"
  click_button "Let's Play!"
end
