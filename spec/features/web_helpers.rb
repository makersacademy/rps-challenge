def sign_in_and_play
  visit "/"
  fill_in "player_name", :with => "Player 1"
  click_button "Play!"
end

def pick_rock
  sign_in_and_play
  click_button "Rock"
end
