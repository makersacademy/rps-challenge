require './app.rb'
require 'capybara/rspec'

Capybara.app = RPS

feature "Player choice RPS" do
  scenario "Player chooses ROCK" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "Testplayer chose rock!"
  end

  scenario "Player chooses PAPER" do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content "Testplayer chose paper!"
  end

end
