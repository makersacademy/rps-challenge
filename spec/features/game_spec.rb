# require 'app'
#
# describe RPS do
#
#   before do
#     visit '/play'
#   end
#
#   feature 'Display winner' do
#     scenario 'slects rock' do
#       click_on 'rock'
#       allow(page).to receive(:sample) { 'scissors' }
#       expect(page).to have_content 'You win'
#     end
#     scenario 'slects rock' do
#       click_on 'rock'
#       allow(page).to receive(:sample) { 'paper' }
#       expect(page).to have_content 'You lose'
#     end
#     scenario 'slects rock' do
#       click_on 'rock'
#       allow(page).to receive(:sample) { 'rock' }
#       expect(page).to have_content 'You draw'
#     end
#
#   end
#
# end
