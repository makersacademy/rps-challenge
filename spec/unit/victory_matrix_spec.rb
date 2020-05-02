require 'victory_matrix'

describe VictoryMatrix do
  describe '#result' do
    it 'returns 2 when the result in a draw' do
      expect(subject.result(0, 0)).to eq(2)
    end

    it 'returns 0 when player 1 wins' do
      expect(subject.result(0, 2)).to eq(0)
    end

    it 'returns 1 when player 2 wins' do
      expect(subject.result(0, 1)).to eq(1)
    end
  end

  describe '#chocie_to_index' do
    it 'converts rock to 0' do
      expect(subject.choice_to_index('rock')).to eq(0)
    end
  end
end
