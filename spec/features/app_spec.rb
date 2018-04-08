require './app.rb'
require 'capybara/rspec'

Capybara.app = RPS

feature "Entering player name" do
  scenario "Expect the homepage to have welcome header" do
    visit '/'
    expect(page).to have_content "Rock Paper Scissors!"
  end

  scenario "Enter player names into the form" do
    sign_in_and_play
    expect(page).to have_content "Welcome, Testplayer!"
  end
end
