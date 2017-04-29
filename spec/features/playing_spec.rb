require 'capybara'
require_relative './web_helpers.rb'

feature 'Runs the game' do
  scenario 'computer wins' do
    srand(10)
    sign_in_and_play
    expect(page).to have_content 'Computer chose Paper. Computer wins!'
  end

  scenario 'player wins' do
    srand(3)
    sign_in_and_play
    expect(page).to have_content 'Computer chose Scissors. Trump wins!'
  end

  scenario 'comes to a draw' do
    srand(2)
    sign_in_and_play
    expect(page).to have_content 'Computer chose Rock. It\'s a draw!'
  end
end
