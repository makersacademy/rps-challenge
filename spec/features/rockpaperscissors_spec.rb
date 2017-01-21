require 'spec_helper'

describe "Rock, Paper, Scissors" do

  feature "player should be able to enter their name before the game", :type => :feature do

    scenario "user enters name and sees it appear on screen" do
      visit("/")
      fill_in "player_name", with: "Kat"
      click_button "Enter"

      expect(page).to have_content("Welcome, Kat!")
    end

  end

  feature "player should be presented with three choices after entering their name", :type => :feature do

    scenario "user sees three choices (rock, paper, scissors)" do
      visit("/")
      fill_in "player_name", with: "Kat"
      click_button "Enter"

      expect(page).to have_content("Rock")
      expect(page).to have_content("Paper")
      expect(page).to have_content("Scissors")
    end

  end

end
