require 'model/game'

describe Game do

  let(:player) { double :player }
  let(:game) { described_class.new(player) }

  describe "#make_choice" do
    it "returns :rock as a symbol" do
      srand(2)
      game.make_robo_choice
      expect(game.return_robo_choice).to eq(:rock)
    end
    it "returns :paper as a symbol" do
      srand(1)
      game.make_robo_choice
      expect(game.return_robo_choice).to eq(:paper)
    end
    it "returns :scissors as a symbol" do
      srand(5)
      game.make_robo_choice
      expect(game.return_robo_choice).to eq(:scissors)
    end
  end

  describe "#calculate_result" do
    it "returns the correct result: paper vs rock" do
      srand(2)
      game.make_robo_choice
      allow(player).to receive(:choice).and_return(:paper)
      expect(game.calculate_result).to eq("You won, ok. Big deal.")
    end
    it "returns the correct result: paper vs scissors" do
      srand(5)
      game.make_robo_choice
      allow(player).to receive(:choice).and_return(:paper)
      expect(game.calculate_result).to eq("YOU LOST, GET OVER IT")
    end
    it "returns the correct result: rock vs rock" do
      srand(2)
      game.make_robo_choice
      allow(player).to receive(:choice).and_return(:rock)
      expect(game.calculate_result).to eq("It's a draw.")
    end
  end
end
