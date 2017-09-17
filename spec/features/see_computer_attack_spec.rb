# feature 'computer can attack' do
#   scenario 'both players use rock' do
#     sign_in_and_play
#     allow(@computer).to receive(:random_attack).with('Rock').and_return('Rock')
#     click_button 'Rock'
#     expect(page).to have_content('Computer uses Rock!')
#   end
# end
