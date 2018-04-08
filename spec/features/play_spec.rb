require './app.rb'
require 'capybara/rspec'

Capybara.app = RPS

feature "Player choice RPS" do
  scenario "Player chooses Rock" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "Testplayer chose Rock!"
  end

  scenario "Player chooses Paper" do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content "Testplayer chose Paper!"
  end

  scenario "Player chooses Scissors" do
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content "Testplayer chose Scissors!"
  end
end
