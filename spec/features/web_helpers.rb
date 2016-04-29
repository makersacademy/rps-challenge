def mode_one_player
  visit('/')
  click_button("one")
  fill_in :player_1_name, with: "Sergio"
  click_button("Submit")
end

def mode_two_players
  visit('/')
  click_button("two")
  fill_in :player_1_name, with: "Sergio"
  fill_in :player_2_name, with: "Paco"
  click_button("Submit")
end