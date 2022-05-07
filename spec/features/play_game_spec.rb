require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RockPaperScissors

feature 'allows player to play a game of RockPaperScissors' do
  scenario 'the player can choose from three buttons' do
    sign_in_and_play
    expect(page).to have_button('ROCK!')
    expect(page).to have_button('PAPER!')
    expect(page).to have_button('SCISSORS!')
  end

  scenario 'clicking a button takes the player to the winner page' do
    sign_in_and_play
    click_button('ROCK!')
    expect(current_path).to eq '/winner'
  end

end
