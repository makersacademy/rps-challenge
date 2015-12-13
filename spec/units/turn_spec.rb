require 'turn'

describe Turn do

  describe '#result' do
    it 'returns a winning message' do
      turn = described_class.new('Paper', 'Rock')
      expect(turn.result).to eq 'You won!'
    end

    it 'returns a lose message' do
      turn = described_class.new('Scissors', 'Rock')
      expect(turn.result).to eq 'You lost!'
    end

    it 'returns a tie message' do
      turn = described_class.new('Rock', 'Rock')
      expect(turn.result).to eq 'No winners!'
    end
  end
end
