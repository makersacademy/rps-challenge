def single_player_sign_in
  visit('/')
  click_button "Single Player"
  fill_in :player_1_name, with: "Kevin"
  click_button "Start Game"
end

def multiplayer_sign_in
  visit('/')
  click_button "Multiplayer"
  fill_in :player_1_name, with: "Kevin"
  fill_in :player_2_name, with: "Nigel"
  click_button "Start Game"
end

def single_player_sign_in_and_play
  single_player_sign_in
  click_button "rock"
end

def multiplayer_sign_in_and_play
  multiplayer_sign_in
  click_button "rock"
  click_button "paper"
end
