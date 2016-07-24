require 'draw'

describe P2Wins do
  let(:p1) {double(:player, name: 'Jack')}
  let(:p2) {double(:player, name: 'Com')}

  describe '#self.result' do
    it 'states that it is a draw' do
      expect(Draw.result(p1,p2)).to include('draw')
    end
  end
end
