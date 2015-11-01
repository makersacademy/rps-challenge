require 'multi_game'

describe MultiGame do
  subject(:multi_game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }

  context "when a new game begins" do
    it "stores player 1" do
      expect(multi_game.player_1).to eq(player_1)
    end

    it "stores player 2" do
      expect(multi_game.player_2).to eq(multi_game.player_2)
    end
  end

  describe "#result" do
    context "when a player selects rock" do
      it "lets the player know if they have won or not" do
        allow(player_1).to receive(:player_weapon).and_return(:rock)
        allow(player_2).to receive(:player_weapon).and_return(:scissors)
        expect(multi_game.result).to eq(:win)
      end
    end

    it "lets the player know if the result is a  draw" do
      allow(player_1).to receive(:player_weapon).and_return(:rock)
      allow(player_2).to receive(:player_weapon).and_return(:rock)
      expect(multi_game.result).to eq(:draw)
    end
  end



end
