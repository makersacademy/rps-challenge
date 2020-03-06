require 'game'

  describe Game do

    subject(:game) { described_class.new(player_1) }
    let(:player_1) { double :player_1 }
    let(:player_move) { double :player_move}

    describe "#player_1" do
      it "returns player 1" do
        expect(game.player_1).to eq player_1
      end
    end

    it "should store the player's move" do
      expect(game.player_selection(player_move)).to eq player_move
    end


end