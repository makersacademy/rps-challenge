def sign_in_and_play
  visit('/')
  fill_in "player1", with: "John"
  fill_in "player2", with: "Frank"
  click_button "begin"
end