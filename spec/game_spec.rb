require 'game'

describe Game do
  subject(:game) { Game.new(player1: player1, player2:player2) }
    let(:player1) { double(:player1, name: 'Player1') }
    let(:player2) { double(:player2, name: 'Player2') }

    describe "Initialization:" do
      it "returns the first player" do
        expect(game.player1).to eq player1
      end

      it "returns the second player" do
        expect(game.player2).to eq player2
      end
    end
  end
