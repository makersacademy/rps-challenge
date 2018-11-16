# feature 'Human player selects a move, outcome shown' do
#   scenario "Human selects Rock, computer selects Rock" do
#     sign_in()
#     click_button 'Rock'
#     expect(page).to have_text("Draw!")
#   end
#
#   scenario "Human selects Paper, computer selects Rock" do
#     sign_in()
#     click_button 'Paper'
#     expect(page).to have_text("Computer Wins! ")
#   end
#
#   scenario "Human selects Scissors, computer selects Rock" do
#     sign_in()
#     click_button 'Rock'
#     expect(page).to have_text("Ben Wins!")
#   end
# end
