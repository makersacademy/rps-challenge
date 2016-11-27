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
    xit "player 1's turn" do
      click_button "choice"
      expect(page.current_path).to eq "/play2"
    end
    xit "should redirect to /play2" do
      click_button "Rock"
      expect(page.current_path).to eq "/result"
    end

  end

  describe "result" do
    xit "should show the weapons player1 and player2 have" do
      expect(page).to have_content("Rock Vs Paper")
    end
    xit "should show the winner's name" do
      expect(page).to have_content("Winner is KillBill")
    end
  end

end
