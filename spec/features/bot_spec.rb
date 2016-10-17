require "spec_helper"
require_relative "test_helper"

RSpec.feature "bot chooses rocks, paper or scissors", :type => :feature do

  before(:each) do
    sign_in_and_play
    click_button "Smash"
  end

  scenario "Bot can choose" do
    expect(page).to have_content("Daily Grind chose #{Game.game.bots_choice}")
  end
end
