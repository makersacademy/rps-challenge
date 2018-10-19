require 'game'

describe Game do
  let(:game) { described_class.new(player, computer)}
  describe "#beats" do
    it "has a set of rules" do
      expect(game.beats).to eq([["paper", "rock"], ["rock", "scissors"], ["scissors", "paper"]])
    end
  end
end
