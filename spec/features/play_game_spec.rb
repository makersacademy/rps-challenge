require 'spec_helper'
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'play rock, paper, scissors' do
  scenario 'play game' do
    allow(Game::WEAPONS).to receive(:sample).and_return('Rock')
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Computer wins!'
  end
end
