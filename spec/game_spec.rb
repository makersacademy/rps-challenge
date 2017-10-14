require 'game'

describe Game do

subject(:game) { described_class.new("Lady Macbeth")}
let(:rock) { double(:rock) }
let(:computer) { double(:computer, choose: "Rock")}

  describe "#play" do
    it "returns win" do
      expect(game.play).to eq "Win"
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
