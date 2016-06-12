def sign_in_and_play
  visit("/")
  fill_in :player1, with: "Player1"
  fill_in :player2, with: "Computer"
  click_button "Let's Play!"
end
