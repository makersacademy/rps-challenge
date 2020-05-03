# require './lib/calculate'

# feature 'Result' do 
#   scenario 'scissors vs paper' do
#     visit '/'
#     click_button '1 Player'
#     fill_in :player1, with: 'Ellis'
#     click_button 'Submit'
#     click_button 'Scissors'
#     expect(page).to have_content 'Ellis Wins! Scissors beats Paper'
#   end
#   scenario 'scissors vs rock' do
#     visit '/'
#     click_button '1 Player'
#     fill_in :player1, with: 'Ellis'
#     click_button 'Submit'
#     click_button 'Scissors'
#     expect(page).to have_content 'you Lose! Rock beats Scissors'
#   end
#   scenario 'scissors vs scissors' do
#     visit '/'
#     click_button '1 Player'
#     fill_in :player1, with: 'Ellis'
#     click_button 'Submit'
#     click_button 'Scissors'
#     expect(page).to have_content "it's a draw! Scissors cancels out Scissors"
#   end
# end

