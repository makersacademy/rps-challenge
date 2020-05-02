require 'game'

describe Game do

  let(:player1) { double() }
  let(:player2) { double() }
  let(:subject) { described_class.new(player1, player2) }

  describe '#players' do
    it 'has a record of players' do
      expect(subject.players).to include(player1, player2)
    end
  end

  describe '#result' do
    it 'returns a tuple for player 1 winning' do
      expect(subject.result).to eq([1, player1])
    end
  end
end
