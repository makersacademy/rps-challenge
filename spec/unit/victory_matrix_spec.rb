require 'victory_matrix'

describe VictoryMatrix do
  describe '#result' do
    it 'returns 2 when the result in a draw' do
      expect(subject.result(0, 0)).to eq(2)
    end
  end
end
