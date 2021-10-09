def sign_in_and_play(rounds)
  visit('/')
  fill_in "player1", with: "John"
  fill_in "player2", with: "Frank"
  choose(rounds, allow_label_click: true)
  click_button "begin"
end