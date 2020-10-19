require "capybara/rspec"
require_relative "../../app/rps"

Capybara.app = RPS

feature 'ask for the players name' do
  scenario 'submit players name and see it in lights' do
    sign_in_and_play
    expect(page).to have_content "Meryl vs. Computer"
  end
end

feature 'ask player for a move' do
  scenario 'player choses rock/paper/scissors' do
    sign_in_and_play
    find_by_id('rock').check
    click_on 'Make Move!'
    
    expect(page).to have_content "Meryl played: Rock"
  end
end
