require 'spec_helper'

feature "FEATURES:" do

  context "When starting a new game" do
  
    scenario "Front page links through" do
      visit "/"
      click_link "Click here to get started!"
      expect(page).to have_content "Hello human. Do you want to play a game? :)"
    end

    scenario "Cannot proceed without a name" do
      visit "/"
      click_link "Click here to get started!"
      fill_in 'name', with: ''
      click_button "Let's do this"
      expect(page).to have_content "Hello human. Do you want to play a game? :)"
    end

    scenario "Can proceed with a name" do
      visit "/new_game"
      fill_in 'name', with: 'name'
      click_button "Let's do this"
      expect(page).to have_content "First to five point wins!"
    end
  
  context "when playing the game" do

    scenario "player can make a play" do
      visit "/new_session"
      click_link "Rock"
      expect(page).to have_content "Player 2 chose"
    end
  end
  end
end

# check winner/loser/draw outcomes