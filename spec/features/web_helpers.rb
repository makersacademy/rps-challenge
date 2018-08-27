def sign_in_and_play
  visit("/")
  fill_in :player_name, with: "Alice"
  click_button "Play"
end

def player_move
  click_button "SCISSORS"
end
