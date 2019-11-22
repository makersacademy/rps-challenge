def sign_in_and_play_one_player
  visit("/")
  fill_in :player_1_name, with: "Marianne"
  click_button "Play"
end

def sign_in_and_play_two_players
  visit("/")
  fill_in :player_1_name, with: "Marianne"
  fill_in :player_2_name, with: "Bob"
  click_button "Play"
end
