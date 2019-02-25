require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '#make_random_move' do

    it 'makes random move' do
      subject.make_random_move
      expect(subject.move).not_to eq nil
    end

  end

  describe '#outcome' do

    it 'returns the winner' do
      game.outcome('rock', 'paper')
      expect(game.result).to eq -1
    end

  end

end
