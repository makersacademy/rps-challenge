require 'game'

describe Game do

  let(:player1) { double :player1, name: "Ellie", move: "Rock" }
  let(:player2) { double :player2, name: "Marius", move: "Paper" }
  subject(:game) { described_class.new(player1, player2)}

    describe '#get_names' do
      it "returns names" do
        expect(game.player1.name).to eq "Ellie"
        expect(game.player2.name).to eq "Marius"
      end
    end

    it "return a winner of the game" do
      expect(game.winner).to eq player_1.name
    end

end
