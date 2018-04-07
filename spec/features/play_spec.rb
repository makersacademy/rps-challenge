require './app.rb'
require 'capybara/rspec'

Capybara.app = RPS

feature "Player choice RPS" do
  scenario "Player chooses ROCK" do
    visit ('/')
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "Testplayer chose rock!"
  end

end
