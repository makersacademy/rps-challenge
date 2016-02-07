# feature 'Choose weapon' do
#   context 'when playing against the computer' do
#     scenario 'it redirects to the results page' do
#       single_sign_in
#       choose('rock')
#       click_button 'Go!'
#       expect(page).to have_xpath '/result'
#     end
#   end
#
#   context 'when playing against another user' do
#     scenario 'it switches turns' do
#       multi_sign_in
#       choose_weapon('paper')
#       expect(page).to have_content('Waiting for Player 2...')
#     end
#   end
# end
