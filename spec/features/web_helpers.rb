def sign_in_and_play
  visit('/')
  fill_in "solo_name", with: "Player 1"
  click_button 'Practice'
end

def two_player_sign_in
  visit('/')
  fill_in "player_1_name", with: "Player 1"
  fill_in "player_2_name", with: "Player 2"
  click_button '2 player throwdown'
end
