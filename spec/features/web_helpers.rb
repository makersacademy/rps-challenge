def sign_in_single_player
  visit '/'
  fill_in "player1name", with: "someguy"
  click_on "Play!"
end

def sign_in_two_player
  visit '/'
  fill_in "player1name", with: "someguy"
  fill_in "player2name", with: "otherguy"
  click_on "Play!"
end
