# require_relative '../../app'
#
# srand 1991
#
# feature 'The player wins the game' do
#   scenario 'The player chooses rock and wins' do
#     sign_in_and_play
#     choose('Rock')
#     click_button('Go!')
#     expect(page).to have_content('Kye chose rock')
#     expect(page).to have_content('Computer chose scissors')
#     expect(page).to have_content('Kye wins!')
#   end
# end
#
# feature 'The game is a draw' do
#   scenario 'The player chooses paper and draws' do
#     sign_in_and_play
#     choose('Paper')
#     click_button('Go!')
#     expect(page).to have_content('Kye chose paper')
#     expect(page).to have_content('Computer chose paper')
#     expect(page).to have_content('Nobody wins!')
#   end
# end
#
# feature 'The player loses the game' do
#   scenario 'The player chooses scissors and loses' do
#     sign_in_and_play
#     choose('Scissors')
#     click_button('Go!')
#     expect(page).to have_content('Kye chose scissors')
#     expect(page).to have_content('Computer chose rock')
#     expect(page).to have_content('Computer wins!')
#   end
# end
