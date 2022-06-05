def sign_in_and_play
  visit ("/")
  fill_in "player1", with: "Annabelle"
  fill_in "player2", with: "Sandy"
  click_on "Submit"
end
