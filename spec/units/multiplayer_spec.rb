require 'multiplayer'

describe MultiplayerGame do
  context "regulates and controls multiplayer functionality" do
    let(:player1) { double :player1 }
    let(:player2) { double :player2 }
    let(:multiplayer) { described_class.new(player1, player2) }

    it "#works" do
      expect { multiplayer }.not_to raise_error
    end

    it "#players" do 
      expect(multiplayer.players).to eq [player1, player2]
    end

    it "#flips coin" do
      expect(multiplayer.flip_coin).to eq player2
    end

    it "#second player" do
      expect(multiplayer.second_player).to eq player1
    end
  end
end