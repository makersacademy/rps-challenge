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
      it "lets the player know if they have won or not" do
        allow(player).to receive(:player_weapon).and_return(:rock)
        allow(computer).to receive(:computer_choice).and_return(:scissors)
        expect(game.result).to eq(:win)
      end
    end

    it "lets the player know if the result is a  draw" do
      allow(player).to receive(:player_weapon).and_return(:rock)
      allow(computer).to receive(:computer_choice).and_return(:rock)
      expect(game.result).to eq(:draw)
    end
  end



end
