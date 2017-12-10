def log_in
  visit ("/")
  fill_in :player_one_name, with: "Nikolaos"
  click_button ("Start the game")
end
