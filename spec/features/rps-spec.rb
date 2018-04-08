require "capybara/rspec"
require_relative "../../lib/app.rb"
require_relative "../../lib/game.rb"

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
      visit("/signin")
      fill_in 'playername', with: "Ralph"
      click_button("Submit name")
      visit("/playrps")
      expect(page).to have_content "Ralph"
      expect(page).to have_button("Rock")
      expect(page).to have_button("Paper")
      expect(page).to have_button("Scissors")

    end

    scenario "after clicking choice user is presented with their choice" do
      visit("/signin")
      fill_in 'playername', with: "Ralph"
      click_button("Submit name")
      visit("/playrps")
      click_button("Rock")
      visit("/pick")
      # game = Game.new
      expect(page).to have_content("You went with Rock!")

    end
  end

end
