def sign_in_and_play
  visit("/")
  fill_in("player1", with: "Mittens")
  click_on("Submit")
end
