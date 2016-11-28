require 'spec_helper'
require 'game'
require 'player'
require 'machine'

describe "Feature View Test" do
  let(:game) { Game.new(player1,player2) }
  let(:player1) { Player.new("Harley Quinn") }
  let(:player2) { Player.new("KillBill") }

  before do
    sign_in
  end

  describe "Sign in" do
    it "should redirect to /play1" do
      expect(page.current_path).to eq "/play1"
    end
  end

  describe "Choose weapon" do
    it "should have player 1's name and player 2's name" do
      expect(page).to have_text("Harley Quinn Vs. KillBill")
    end
    it "should redirect to /play2 after player 1 has chosen the weapon" do
      click_button "Scissors"
      expect(page.current_path).to eq "/play2"
    end

  end

  describe "result" do
    it "should show the weapons player1 and player2 have" do
      click_button "Rock"
      click_button "Paper"
      expect(page).to have_content("Rock Vs Paper")
    end
    it "should show the winner's name" do
      click_button "Paper"
      click_button "Rock"
      expect(page).to have_content("Harley Quinn is the winner!")
    end
  end

end
