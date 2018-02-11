require "game"

describe Game do

  let(:player_1) { double "Jim" }
  subject(:game) { described_class.new(player_1) }

  context "#initialize" do

    it "initializes with a player" do
      expect(game.player_1).to eq(player_1)
    end

  end

  context "#outcome" do

    before(:each) do
      allow_any_instance_of(Computer).to receive(:move).and_return(:scissors)
    end

    it "returns win if the player wins" do
      allow(player_1).to receive(:move).and_return(:rock)
      expect(game.outcome).to eq(:win)
    end

    it "returns draw if the player draws" do
      allow(player_1).to receive(:move).and_return(:scissors)
      expect(game.outcome).to eq(:draw)
    end

    it "returns lose if the player loses" do
      allow(player_1).to receive(:move).and_return(:paper)
      expect(game.outcome).to eq(:lose)
    end

  end

end
