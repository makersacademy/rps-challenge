def sign_in_and_play
  visit '/'
  fill_in :player_1, with: "Telgi"
  click_button "Submit"
end

def start_game
  sign_in_and_play
  click_button "Start to Play"
end
