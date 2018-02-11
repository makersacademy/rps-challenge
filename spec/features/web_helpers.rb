def sign_in_and_play
  visit '/'
  fill_in :player_1, with: "Telgi"
  click_button "Play"
end

def sign_in_with_no_name_and_play
  visit '/'
  click_button "Play"
end

def start_game
  sign_in_and_play
  click_button "Start Game"
end
