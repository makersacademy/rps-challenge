require 'capybara'
require_relative './web_helpers.rb'

feature 'Runs the game' do
  scenario 'computer wins' do
    srand(10)
    sign_in_and_play
    expect(page).to have_content 'Computer chose Paper. COMPUTER WINS!'
  end

  scenario 'player wins' do
    srand(3)
    sign_in_and_play
    expect(page).to have_content 'Computer chose Scissors. TRUMP WINS!'
  end

  scenario 'comes to a draw' do
    srand(2)
    sign_in_and_play
    expect(page).to have_content 'Computer chose Rock. IT\'S A DRAW!'
  end

  scenario 'rules still apply to special moves' do
    srand(67)
    sign_in_and_play
    expect(page).to have_content 'Computer chose Lizard. TRUMP WINS!'
  end
end
