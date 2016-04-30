require 'game'

describe Game do
  let(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player, lives: 1) }
  let(:player_2) { double(:player, lives: 0) }

  context 'Players' do
    describe '#player1' do
      it 'Contains the first player' do
        expect(game.player_1).to eq player_1
      end
    end

    describe '#player2' do
      it 'Contains the second player' do
        expect(game.player_2).to be player_2
      end
    end
  end

end
