def start_game_sp
  visit ('/')
  fill_in :player_1_name, with: "Ray"
  click_button "Let's Play!"
end

def start_game_tp
  visit ('/')
  fill_in :player_2_name, with: "Ray"
  fill_in :player_3_name, with: "Bob"
  click_button "Let's Battle!"
end
