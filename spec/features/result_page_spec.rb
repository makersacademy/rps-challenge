require_relative 'sign_in_and_play_helper'

feature "result page" do

  before do
    sign_in_and_play
  end

  context "player has selected Rock" do
    scenario "player has selected to Rock" do
      click_on "Rock"
      expect(page).to have_content "You have selected Rock"
    end
  end

  context "player has selected Paper" do
    scenario "player has selected to Paper" do
      click_on "Paper"
      expect(page).to have_content "You have selected Paper"
    end
  end

  context "player has selected Scissors" do
    scenario "player has selected to Scissors" do
      click_on "Scissors"
      expect(page).to have_content "You have selected Scissors"
    end
  end

end
