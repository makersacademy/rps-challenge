require "spec_helper"
require_relative "test_helper"

RSpec.feature "announces the outcome", :type => :feature do

  before(:each) do
    sign_in_and_play
    allow(Game.game).to receive_messages(bots_choice: "scissors")
  end

  scenario "User wins" do
    click_button "Smash"
    expect(page).to have_content("You win!")
  end

  scenario "User looses" do
    click_button "Wrap"
    expect(page).to have_content("You loose")
  end

  scenario "User looses" do
    click_button "Chop"
    expect(page).to have_content("You tied")
  end
end
