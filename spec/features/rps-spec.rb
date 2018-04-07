require "capybara/rspec"
require_relative "../../lib/app.rb"

Capybara.app = App

feature "on signing in to the game of RPS" do

  scenario "homepage has an option to submit a name" do

    visit("/signin")
    expect(page).to have_field("playername")

  end

  scenario "player name is displayed on game page" do

    visit("/signin")
    fill_in 'playername', with: "Ralph"
    click_button("Submit name")
    visit("/playrps")
    expect(page).to have_content "Ralph"

  end

  feature "on playing the game" do

    scenario "the user has three options for rock paper and scissors" do

      expect(page).to have_field("Rock")
      expect(page).to have_field("Paper")
      expect(page).to have_field("Scissors")
    end
  end

end
