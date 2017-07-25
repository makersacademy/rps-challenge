def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Ryan"
  click_button "Play"
end

def play_round
  click_on "rock"
  click_on "Next round"
end
