feature "gameplay" do
scenario "rock over paper" do
  sign_in_and_play
  player_1_rock_player2_paper
  expect(page).to have_content "The winner is: Patryk"
end
scenario "the draw" do
  sign_in_and_play
  player_1_lizard_player2_lizard
  expect(page).to have_content "The winner is: No winners"
end
scenario "the draw and rock over paper in the second game" do
  sign_in_and_play
  player_1_lizard_player2_lizard
  click_button "Try Again"
  player_1_rock_player2_paper
  expect(page).to have_content "The winner is: Patryk"
end
end
