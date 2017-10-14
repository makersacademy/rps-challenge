require 'game'

describe Game do

subject(:game) { described_class.new("Lady Macbeth")}
let(:rock) { double(:rock) }

  describe "#play" do
    it "returns win" do
      expect(game.play).to eq "Win"
    end
  end

  describe "#player_choose" do
    it "takes a string and returns a corresponding object" do
      allow(Rock).to receive(:new) { rock }
      expect(game.player_choose("Rock")).to eq rock
    end
  end

end
