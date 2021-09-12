require 'capybara/rspec'
require_relative '../../app'

# feature 'Playing the game' do
#     scenario "When I click on 'Rock' I am told if I have won" do
#       visit('/')
#       fill_in :marketer_name_1, with: 'Adrienne'
#       click_button('Submit')
#       expect(page).to have_content("Adrienne")
#     end
# end

# feature 'Rock, Paper, Scissors' do
#   scenario 'Announces a winner (the player)' do
#     srand(2)
#     click_button('paper')
#     expect(page).to have_content 'The winner is...Adrienne'
#   end

#   scenario 'Announces a winner (the computer)' do
#     srand(1)
#     click_button('paper')
#     expect(page).to have_content 'The winner is... Computer'
#   end

#   scenario 'Announces a draw' do
#     srand(5)
#     click_button('paper')
#     expect(page).to have_content 'The winner is... No one! It\'s a draw'
#   end
# end