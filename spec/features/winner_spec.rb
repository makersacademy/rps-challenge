# feature 'Winner is selected' do
#   scenario 'after selecting player 1 selects a move, the winner of the round is determined' do
#     sign_in_and_play
#     fill_in(:player_1_move, with: 'Paper')
#     click_button("Play")
#     expect(page).to have_content("wins")
#   end
# end

# Best practice - are you meant to stub feature tests?