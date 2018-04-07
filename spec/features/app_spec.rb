require './app.rb'
require 'capybara/rspec'

Capybara.app = RPS

feature "Entering player name" do
  scenario "Enter player names into the form" do
    sign_in_and_play
    expect(page).to have_content "Welcome, Tesplayer!"
  end
end
