def sign_in_and_play_against_computer
  visit('/')
  fill_in :player_1, with: "Jim"
  click_button "Submit"
end

def sign_in_and_play_2_player
  visit('/')
  fill_in :player_1, with: "Jim"
  fill_in :player_2, with: "Bob"
  click_button "Submit"
end
