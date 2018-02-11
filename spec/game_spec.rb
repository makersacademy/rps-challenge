require "game"

describe Game do

  let(:player_1) { double "Jim" }
  let(:player_2) { double "Bob" }
  subject(:game) { described_class.new(player_1, player_2) }

  context "#initialize" do

    it "initializes with a player" do
      expect(game.player_1).to eq(player_1)
      expect(game.player_2).to eq(player_2)
    end

  end

  context "#outcome" do

    it "returns win if the player wins" do
      allow(player_1).to receive(:move).and_return(:rock)
      allow(player_2).to receive(:move).and_return(:scissors)
      expect(game.outcome).to eq(:win)
    end

    it "returns draw if the player draws" do
      allow(player_1).to receive(:move).and_return(:scissors)
      allow(player_2).to receive(:move).and_return(:scissors)
      expect(game.outcome).to eq(:draw)
    end

    it "returns lose if the player loses" do
      allow(player_1).to receive(:move).and_return(:paper)
      allow(player_2).to receive(:move).and_return(:scissors)
      expect(game.outcome).to eq(:lose)
    end

  end

end
