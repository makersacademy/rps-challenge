require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#move' do
    it 'returns the players move' do
      dave.move('Rock')
      expect(dave.move('Rock')).to eq 'Rock'
    end
  end
end