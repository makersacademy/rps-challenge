# feature 'Standby page' do
#
#   scenario '0.0 Player 1 signs in first' do
#     p1_sign_in
#     expect(page).to have_content('Waiting for Player 2 to complete entry...')
#   end
#
#   scenario '0.1 Player 2 signs in first' do
#     p2_sign_in
#     expect(page).to have_content('Waiting for Player 1 to complete entry...')
#   end
# end
