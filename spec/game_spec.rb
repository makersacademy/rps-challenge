require 'game'
require 'player'

describe Game do
    let(:player1) { Player.new("Boris")}
    let(:player2) { Player.new()}

    subject(:game) { described_class.new(player1, player2) }

    it { is_expected.to respond_to(:play).with(1).argument }

    it 'can play the game' do
        expect(game).to respond_to(:play)
    end

    it 'returns a game result' do
        game.play("Paper", "Scissors")
        expect(game.result).to eq 'Computer wins :-('
    end

end