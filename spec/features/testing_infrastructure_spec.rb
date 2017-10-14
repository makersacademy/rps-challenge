require "capybara/rspec"
require_relative "../../lib/app"

# feature 'Testing infrastructure' do
#   scenario 'can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working'
#   end
# end

feature 'Enter names' do
  scenario 'Players can enter their names' do
  sign_in_and_play
    expect(page).to have_content 'Bob'
  end
end

feature 'Pick rock paper or scissors' do
  scenario 'Players can enter their choice' do
  sign_in_and_play
  fill_in :player_choice, with: 'rock'
  click_button 'Submit'
    expect(page).to have_content 'rock'
  end
end
