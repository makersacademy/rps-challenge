def register_process
  visit('/')
  click_button("1 PLAYER")
  fill_in("player_one_name", with: "player_one_name")
  click_button("START!")
end

def register_process_2P_game
  visit('/')
  click_button("2 PLAYER")
  fill_in("player_one_name", with: "player_one_name")
  fill_in("player_two_name", with: "player_two_name")
  click_button("START!")
end
