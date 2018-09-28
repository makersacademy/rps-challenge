
require 'spec_helper'

feature "playing the game" do
  context "when plays the game" do
    scenario "player sees the options available" do
      register
      expect(page).to have_button "Rock"
      expect(page).to have_button "Paper"
      expect(page).to have_button "Scissors"
    end
  end

  context "when player must choose an option" do
    scenario "player selects a shape" do
      register
      click_button 'Rock'
      expect(page).to have_content 'You chose Rock!!'
    end
  end

  context "when computer must choose an option" do
    scenario "computer selects a shape" do
      allow_any_instance_of(Game).to receive(:choice).and_return("Paper")
      register
      click_button 'Rock'
      expect(page).to have_content 'Computer chose Paper!!'
    end
  end

  context "when game ends" do
    scenario "Player wins" do
      allow_any_instance_of(Game).to receive(:choice).and_return("Scissors")
      register
      click_button 'Rock'
      expect(page).to have_content 'Congratulations You won!!'
    end
  end

  context "when game ends" do
    scenario "Player loses" do
      allow_any_instance_of(Game).to receive(:choice).and_return("Scissors")
      register
      click_button 'Paper'
      expect(page).to have_content 'Computer won!!'
    end
  end

  context "when game ends" do
    scenario "It is a draw" do
      allow_any_instance_of(Game).to receive(:choice).and_return("Scissors")
      register
      click_button 'Scissors'
      expect(page).to have_content "It's a draw!"
    end
  end
end
