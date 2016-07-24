require 'p1wins'

describe P1Wins do
  let(:p1) {double(:player, name: 'Jack')}
  let(:p2) {double(:player, name: 'Com')}

  describe '#self.result' do
    it 'returns player 1' do
      expect(P1Wins.result(p1,p2)).to include('Jack')
    end
  end
end
