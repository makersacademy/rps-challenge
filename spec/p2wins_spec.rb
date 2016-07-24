require 'p2wins'

describe P2Wins do
  let(:p1) {double(:player, name: 'Jack')}
  let(:p2) {double(:player, name: 'Com')}

  describe '#self.result' do
    it 'returns player 2' do
      expect(P2Wins.result(p1,p2)).to include('Com')
    end
  end
end
