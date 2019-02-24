def multiplayer_sign_in_and_play
  visit("/")
  click_button "2 players"
  fill_in :player_1_name, with: "Player1"
  fill_in :player_2_name, with: "Player2"
  click_button "Start"
end

def singleplayer_sign_in_and_play
  visit("/")
  click_button "1 player"
  fill_in :player_1_name, with: "Player1"
  click_button "Start"
end
