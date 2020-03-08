require 'game'

  describe Game do

    subject(:game) { described_class.new(player_1) }
    let(:player_1) { double :player_1 }
    let(:player_2) { double :player_2 }
    let(:p1_move) { double :p1_move }
    let(:p2_move) { double :p2_move }
    

    describe "#player_1" do
      it "returns player 1" do
        expect(game.player_1).to eq player_1
      end
    end

    it "should store the player's move" do
      expect(game.player_1_selection(p1_move)).to eq p1_move
    end


end
