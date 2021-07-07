require 'player'

describe Player do
  subject(:player) { Player.new('Dave') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq 'Dave'
    end
  end

  describe '#move' do
    it 'returns the players move' do
      player.move('Rock')
      expect(player.move('Rock')).to eq 'Rock'
    end
  end
end