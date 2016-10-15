require "spec_helper"

RSpec.feature "player name management", :type => :feature do
  scenario "adding player names at start of game" do
    enter_name
    expect(page).to have_text("Powders")
  end
end
