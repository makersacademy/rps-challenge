require 'capybara'
require_relative './web_helpers.rb'

feature 'Runs the game' do
  scenario 'computer wins' do
    srand(1)
    sign_in_and_play
    expect(page).to have_content 'Computer chose Paper. You lose!'
  end

  scenario 'player wins' do
    srand(3)
    sign_in_and_play
    expect(page).to have_content 'Computer chose Scissors. You win!'
  end

  scenario 'comes to a draw' do
    srand(2)
    sign_in_and_play
    expect(page).to have_content 'Computer chose Rock. It\'s a draw!'
  end
end
