def sign_in_and_click_play
  visit("/")
  fill_in :player_1, with: "player_one_name"
  fill_in :player_2, with: "player_two_name"
  click_on "Let's Play!"
end
