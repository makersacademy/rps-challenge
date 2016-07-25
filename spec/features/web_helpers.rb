def sign_in_and_play
  visit "/"
  fill_in :player1, with: "Robert"
  click_button "Play"
end

def sign_in_multiplayer
  visit "/"
  choose "human"
  fill_in :player1, with: "Robert"
  fill_in :player2, with: "Thor"
  click_button "Play"
end
