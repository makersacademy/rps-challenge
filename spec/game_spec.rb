require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#player1' do
    it 'Knows player 1' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'Knows player 2' do
      expect(game.player2).to eq player2
    end
  end

  describe '#moves' do
    context 'when players both choose paper' do
      it 'Is a draw' do
        expect(game.moves('Paper', 'Paper')).to eq "It's a draw!"
      end

    context 'when players both choose rock' do
      it 'Is a draw' do
        expect(game.moves('Rock', 'Rock')).to eq "It's a draw!"
      end
    end

    context 'When players both choose scissors' do
      it 'Is a draw' do
        expect(game.moves('Scissors', 'Scissors')).to eq "It's a draw!"
      end
    end
    end
  end
end
