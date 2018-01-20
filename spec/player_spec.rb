require 'player'

describe Player do
  subject(:player) { described_class.new('Dom') }

  describe '#name' do
    it 'should return the name' do
      expect(player.name).to eq 'Dom'
    end
  end

  describe '#move' do
    it 'gets/sets the move' do
      player.move = :Paper
      expect(player.move).to eq :Paper
    end
  end
end
