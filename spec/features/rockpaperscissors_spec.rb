require 'spec_helper'

require 'computer'

describe "Rock, Paper, Scissors" do

  feature "player should be able to enter their name before the game", :type => :feature do
    scenario "user enters name and sees it appear on screen" do
      visit("/")
      fill_in "player_name", with: "Kat"
      click_button "Enter"

      expect(page).to have_content("Hi, Kat!")
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

  feature "player should be able to choose one of the options presented", :type => :feature do
    scenario "user can choose a move" do
      visit("/")
      fill_in "player_name", with: "Kat"
      click_button "Enter"
      choose "Rock"
    end
  end

  feature "computer will randomly choose one of the options after the player", :type => :feature do
    scenario "computer assigns a second move" do
      visit("/")
      fill_in "player_name", with: "Kat"
      click_button "Enter"
      choose "Rock"
      click_button "Play"

      expect(page).to have_content("computer selected")
    end
  end

  feature "winner will be declared based on the moves of player and computer", :type => :feature do

    scenario "user sees whether they won" do
      allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)

      visit("/")
      fill_in "player_name", with: "Kat"
      click_button "Enter"
      choose "Paper"
      click_button "Play"

      expect(page).to have_content("You won!!")
    end
  end

end
