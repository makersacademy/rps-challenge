# require "./spec/features/web_helpers"

# feature "The player" do
#   scenario "has won" do
#     login_and_play
#     click_button "rock"
#     expect(page).to have_content("Mike, YOU WIN THIS TIME")
#   end

#   scenario "has lost" do
#     login_and_play
#     click_button "paper"
#     expect(page).to have_content("Mike, YOU ARE SUCH A LOSER")
#   end

#   scenario "can draw against the Matrix" do
#     login_and_play
#     click_button "scissors"
#     expect(page).to have_content("IT'S A DRAW THIS TIME")
#   end
# end