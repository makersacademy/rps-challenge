require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double(:player)}
  let(:computer) { double(:computer) }

  context "when a new game begins" do
    it "stores our player" do
      expect(game.player).to eq(player)
    end

    it "stores our computer" do
      expect(game.computer).to eq(computer)
    end
  end

  describe "#result" do
    context "when a player selects rock" do
      before do
        allow(player).to receive(:player_weapon).and_return(:rock)
      end
      it "wins vs scissors" do
        allow(computer).to receive(:choice).and_return(:scissors)
        expect(game.result).to eq(:win)
      end
      it "draws vs rock" do
        allow(computer).to receive(:choice).and_return(:rock)
        expect(game.result).to eq(:draw)
      end
      it "loses vs paper" do
        allow(computer).to receive(:choice).and_return(:paper)
        expect(game.result).to eq(:lose)
      end
      it "wins vs lizard" do
        allow(computer).to receive(:choice).and_return(:lizard)
        expect(game.result).to eq(:win)
      end
    end
  end
end
