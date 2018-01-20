require 'player'

describe Player do
  subject(:player) { described_class.new('Dom') }

  describe '#name' do
    it 'should return the name' do
      expect(player.name).to eq 'Dom'
    end
  end
end
