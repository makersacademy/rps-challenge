require "spec_helper"

RSpec.feature "choose rocks, paper or scissors", :type => :feature do

  before(:each) do
    visit "/"

    fill_in "Name", :with => "Dagmara"
    click_button "Game on!"
    click_button "Smash"
  end

  scenario "Bot can choose rock" do
    allow(Game.game).to receive_messages(bots_choice: "rock")
    expect(page).to have_content("Bot chose rock")
  end

  scenario "User can choose paper" do
    allow(Game.game).to receive_messages(bots_choice: "paper")
    expect(page).to have_content("Bot chose paper")
  end

  scenario "User can choose scissors" do
    allow(Game.game).to receive_messages(bots_choice: "scissors")
    expect(page).to have_content("Bot chose scissors")
  end
end
