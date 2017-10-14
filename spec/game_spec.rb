require 'game'

describe Game do

subject(:game) { described_class.new("Paper", computer)}
let(:rock) { double(:rock) }
let(:computer) { double(:computer, choose: "Rock")}

  describe "#play" do

    it "returns 'Win' when player chooses 'Paper' and computer chooses 'Rock' " do
      expect(game.play).to eq "Win"
    end

    it "returns 'Lose' when player chooses 'Paper' and computer chooses 'Scissors' " do
      allow(computer).to receive(:choose) { "Scissors" }
      expect(game.play).to eq "Lose"
    end

    it "returns 'Draw' when player chooses 'Paper' and computer chooses 'Paper' " do
      allow(computer).to receive(:choose) { "Paper" }
      expect(game.play).to eq "Draw"
    end
    
  end

  describe "#player_choose" do
    it "returns a Rock object when passed 'Rock' string" do
      allow(Rock).to receive(:new) { rock }
      expect(game.player_choose("Rock")).to eq rock
    end
  end

  describe "#computer_choose" do
    it "returns corresponding object to string passed" do
      allow(Computer).to receive (:new) { computer }
      allow(Rock).to receive(:new) { rock }
      expect(game.computer_choose).to eq rock
    end
  end

end
