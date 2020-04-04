def sign_in_and_play
  visit('/')
  fill_in "player_1", with: "Kealan"
  fill_in "player_2", with: "Harry"
  click_on "Submit"
end