def sign_in_single_player
  visit '/'
  fill_in "player1name", with: "someguy"
  click_on "Play!"
end
